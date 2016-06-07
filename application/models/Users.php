<?php
class users extends CI_model {
	var $tabela = 'usuario';
	var $tabela_perfil = 'usuario_perfil';
	var $tabela_perfil_ativo = 'usuario_perfis_ativo';

	function le($id = 0, $cracha = 'xxx') {
		$sql = "select * from " . $this -> tabela . " 
				where id_us = " . round($id) . "
				or us_codigo = '" . $cracha . "' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$line = $rlt[0];
			return ($line);
		} else {
			$line = array();
			return ($line);
		}
	}

	function row($form) {
		global $tabela, $http_edit, $http_edit_para, $cdf, $cdm, $masc, $offset, $order;
		$form -> fd = array('id_us', 'us_nome', 'us_email');
		$form -> lb = array('ID', 'nome', 'codigo');
		$form -> mk = array('', '', '', '', '', '', '', '', '');

		return ($form);
	}

	function cp() {
		global $messa, $dd;
		$cp = array();
		if (strlen($dd[1]) == 0) { $dd[1] = '#RES';
		}
		array_push($cp, array('$H8', '', '', False, True));
		array_push($cp, array('$H8', '', 'Validador', True, True));

		array_push($cp, array('$A', '', msg('about_user'), False, True));

		array_push($cp, array('$S100', 'us_nome', msg('name'), True, True));
		array_push($cp, array('$H20', 'us_login', $logx, False, True));
		array_push($cp, array('$S100', 'us_email', msg('email'), True, True));
		array_push($cp, array('$M', '', '', False, False));
		array_push($cp, array('$S100', 'us_email_alt', msg('email_alt'), False, True));
		array_push($cp, array('$P20', 'us_senha', msg('senha'), True, True));
		//array_push($cp,array('$}','','',False,True));
		array_push($cp, array('$HV', 'us_ativo', '-1', True, True));
		array_push($cp, array('$A', '', msg('academic_information'), False, True));
		array_push($cp, array('$S100', 'us_instituition', msg('institution_affiliated'), True, True));
		//array_push($cp,array('$}','','',False,True));

		array_push($cp, array('$T60:5', 'us_endereco', msg('address'), False, True));
		array_push($cp, array('$Q pais_nome:pais_codigo:select * from ajax_pais order by pais_nome', 'us_country', msg('country'), True, True));

		array_push($cp, array('$U8', 'us_cadastro', '', False, True));

		array_push($cp, array('$HV', 'us_perfil', '', False, True));

		array_push($cp, array('$H8', 'us_codigo', '', False, True));
		array_push($cp, array('$CAPTCHA', '', msg('copy_the_text'), True, True));

		array_push($cp, array('$B8', '', msg('registrarse'), False, True));

		return ($cp);

	}

	/* Check if is the new email */
	function is_new_user($email)
		{
			$sql = "select * from usuario where us_email = '$email' ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			if (count($rlt) == 0)
				{
					return(1);
				} else {
					return(0);
				}
		}

	function cp_new_user() {
		global $messa, $dd;
		$cp = array();
		if (strlen($dd[1]) == 0) { $dd[1] = '#RES';
		}
		array_push($cp, array('$H8', '', '', False, True));
		array_push($cp, array('$A', '', msg('about_user'), False, True));
		array_push($cp, array('$S100', 'us_nome', msg('name'), True, True));
		array_push($cp, array('$S100', 'us_email', msg('email'), True, True));
		/* Msg = dd4 */
		array_push($cp, array('$M', '', '', False, True));
		array_push($cp, array('$CAPTCHA', '', msg('copy_the_text'), True, True));
		array_push($cp, array('$B8', '', msg('registrarse'), False, True));

		return ($cp);

	}


	function cp_myaccount() {
		global $messa;
		$cp = array();
		array_push($cp, array('$H8', 'id_us', '', False, True));
		array_push($cp, array('$S100', 'us_nome', msg('name'), True, True));
		array_push($cp, array('$H20', 'us_login', msg('login'), True, True));
		array_push($cp, array('$S100', 'us_email', msg('email'), True, True));
		array_push($cp, array('$S100', 'us_email_alt', msg('email_alt'), False, True));
		//array_push($cp, array('$P20', 'us_senha', msg('senha'), True, True));
		array_push($cp, array('$HV', 'us_ativo', '1', False, True));
		array_push($cp, array('$T60:5', 'us_endereco', msg('address'), False, True));
		array_push($cp, array('$Q pais_codigo:pais_nome:select * from ajax_pais order by pais_nome', 'us_country', msg('country'), True, True));
		array_push($cp, array('$S100', 'us_instituition', msg('institution'), True, True));
		return ($cp);
	}

	function cp_admin() {
		global $messa;
		$cp = array();
		$op = '&-1:' . msg('not_valided');
		$op .= '&0:' . msg('inative');
		$op .= '&1:' . msg('valided');
		array_push($cp, array('$H8', 'id_us', '', False, True));
		array_push($cp, array('${', '', msg('account'), False, True));
		array_push($cp, array('$S100', 'us_nome', msg('name'), True, True));
		array_push($cp, array('$H20', 'us_login', msg('login'), False, True));
		array_push($cp, array('$S100', 'us_email', msg('email'), True, True));
		array_push($cp, array('$S100', 'us_email_alt', msg('email_alt'), False, True));
		//array_push($cp, array('$P20', 'us_senha', msg('senha'), True, True));
		array_push($cp, array('$T60:5', 'us_endereco', msg('address'), False, True));
		array_push($cp, array('$S100', 'us_instituition', msg('institution'), True, True));

		array_push($cp, array('$O' . $op, 'us_ativo', msg('status'), '1', True, True));
		array_push($cp, array('$}', '', '', False, True));

		return ($cp);
	}

	function updatex() {
		global $base;
		$c = 'us';
		$c1 = 'id_' . $c;
		$c2 = $c . '_codigo';
		$c3 = 7;
		$sql = "update " . $this -> tabela . " set $c2 = lpad($c1,$c3,0) ,
						us_login =  lpad($c1,$c3,0) ,
						us_cracha =  lpad($c1,$c3,0) 
						where $c2='' or 1=1";
		if ($base == 'pgsql') { $sql = "update " . $this -> tabela . " set $c2 = trim(to_char(id_" . $c . ",'" . strzero(0, $c3) . "')) where $c2='' or  $c2 isnull ";
		}
		$rlt = db_query($sql);
	}

	function forgot_password($email) {
		$sql = "select * from usuario where us_email = '$email' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$line = $rlt[0];
			$pass = $line['us_senha'];
			$id = $line['id_us'];

			$this -> load -> model('messages');
			$messa = $this -> messages -> recover('send_forgot_password', $line);

			if (count($messa) < 1) {
				return (-2);
			}
			return (1);
		} else {
			$ok = -1;
			return ($ok);
		}
	}

	function perfil_atribui_form() {
		$sx = '';
		$dd1 = get("dd1");
		$dd2 = get("dd2");
		$acao = get("acao");

		$b2 = 'set perfil >>>';
		$b1 = 'list perfil >>>';

		$sx = '<form method="post" action="' . base_url('index.php/admin/assign_to_user_profile') . '">';

		$sx .= '<div class="rows">';
		$sx .= '	<div class="col-md-6" style="padding-top: 20px;">';
		$sx .= msg('user_select_user') . '<br>';
		$sx .= '	<select size=18 name="dd1" style="width: 95%;">';
		$sql = "select * from " . $this -> tabela . " where us_ativo = 1 order by us_nome ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$cod = strzero($line['id_us'], 7);
			$sel = '';
			if ($cod == $dd1) { $sel = ' selected ';
			}
			$user_name = trim($line['us_nome']);
			$user_name .= ' (' . trim($line['us_email']) . ')';
			$user_name = substr($user_name, 0, 60);
			$sx .= '<option value="' . $cod . '" ' . $sel . '>';
			$sx .= trim($user_name);
			$sx .= '</option>';
		}
		$sx .= '</select><br>';
		$sx .= '	<input type="submit" name="acao" value="' . $b1 . '">';
		$sx .= '	</div>';
		$sx .= '	<div class="col-md-6" style="padding-top: 20px;">';

		$sx .= msg('user_select_perfil') . '<br>';
		$sx .= '<select size=18 name="dd2" style="width: 95%;">';
		$sql = "select * from " . $this -> tabela_perfil . " where usp_ativo = 1 order by usp_descricao ";
		$rlt = db_query($sql);
		while ($line = db_read($rlt)) {
			$cod = trim($line['usp_codigo']);
			$user_name = trim($line['usp_descricao']);
			$sel = '';
			if ($cod == $dd2) { $sel = ' selected ';
			}

			$sx .= '<option value="' . $cod . '" ' . $sel . '>';
			$sx .= trim($user_name);
			$sx .= '</option>';
		}
		$sx .= '</select><br>';
		$sx .= '	<input type="submit" name="acao" value="' . $b2 . '">';
		$sx .= '	</div>';
		$sx .= '</div>';

		$sx .= '</div>';

		if ((strlen($dd1) > 0) and (strlen($dd2) > 0) and ($acao == $b2)) {
			$ox = $this -> atribui_perfil($dd1, $dd2);

			if ($ox == 1) {
				$sx .= $this -> load -> view('successful', null, true);
			}

		}
		return ($sx);
	}

	function atribui_perfil($user, $perfil) {
		$sql = "select * from " . $this -> tabela_perfil_ativo . "
				where up_usuario = '$user' and
				up_perfil = '$perfil' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();

		if (count($rlt) > 0) {
			$line = $rlt[0];
			$idl = $line['id_up'];
			$sql = "update " . $this -> tabela_perfil_ativo . " set up_ativo = 1 
					where id_up = $idl
			";
			$rlt = $this -> db -> query($sql);
		} else {
			$data = date("Ymd");
			$sql = "insert into " . $this -> tabela_perfil_ativo . " 
						(up_perfil, up_usuario, 
						up_data, up_data_end, up_ativo)
						values 
						('$perfil','$user',
						$data,19000101,1)
					";
			$rlt = $this -> db -> query($sql);
		}
		return (1);
	}

	function perfil_delete($id) {

		/* Exluir e valida administrador */
		$admin = 0;
		if ((perfil('#ADM')) or (perfil('#MAS'))) {

			if (get("dd5") == 'DEL') {
				$idx = strzero($$id, 7);
				$sql = "update " . $this -> tabela_perfil . " 
									set up_ativo = 0 
									where id_up = " . round($dd[6]);
				$rrr = db_query($sql);
				$this -> set($id);
			}
		}
	}

	function perfil_show($id) {
		//$id = $
		$sx = '';
		$sql = "select * from " . $this -> tabela_perfil;
		$sql .= " inner join " . $this -> tabela_perfil_ativo . " on up_perfil = usp_codigo ";
		$sql .= " where up_usuario = '" . trim($id) . "' ";
		$sql .= " and up_ativo = 1";

		$rlt = db_query($sql);
		$sx .= '<div class="row">';
		$sx .= '	<div class="col-md-9" style="padding-top: 20px;">' . msg('description') . '</div>';
		$sx .= '	<div class="col-md-3" style="padding-top: 20px;">' . msg('indication') . '</div>';

		$admin = perfil("#ADM");
		echo '===>' . $admin;
		exit ;

		while ($line = db_read($rlt)) {
			$sx .= '<div class="row">';
			$sx .= '	<div class="col-md-9" style="padding-top: 20px;">' . $line['usp_descricao'] . '</div>';
			$sx .= '	<div class="col-md-2" style="padding-top: 20px;">' . $line['usp_descricao'] . '</div>';

			if ($admin == 1) {
				$link = '<A HREF="' . page() . '?dd0=' . $dd[0] . '&dd1=' . $dd[1] . '&dd90=' . $dd[90] . '&dd5=DEL&dd6=' . $line['id_up'] . '">';
				$sx .= '	<div class="col-md-1" style="padding-top: 20px;">' . $link;
				$sx .= '<img src="' . base_url('images/icone_remove.png') . '" border=0 >';
				$sx .= '</a>';
				$sx .= '</div>';
			}

		}
		$sx .= '</table>';
		return ($sx);
	}

}
?>
