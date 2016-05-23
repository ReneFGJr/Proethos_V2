<?php
class users extends CI_model {
	var $tabela = 'usuario';
	
	function le($id = 0, $cracha = 'xxx') {
		$sql = "select * from " . $this -> tabela . " 
				where id_us = " . round($id) . "
				or us_codigo = '" . $cracha . "' ";
		$rlt = $this->db->query($sql);
		$rlt = $rlt->result_array();
		if (count($rlt) > 0)
		{
			$line = $rlt[0];
			return ($line);
		} else {
			$line = array();
			return ($line);
		}
	}

	function row() {
		global $tabela, $http_edit, $http_edit_para, $cdf, $cdm, $masc, $offset, $order;
		$cdf = array('id_us', 'us_login', 'us_nome', 'us_codigo');
		$cdm = array('ID', 'login', 'nome', 'codigo');
		$masc = array('', '', '', '', '', '', '', '', '');
		return (True);
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
		array_push($cp, array('$P20', 'us_senha', msg('senha'), True, True));
		array_push($cp, array('$T60:5', 'us_endereco', msg('address'), False, True));
		array_push($cp, array('$S100', 'us_instituition', msg('institution'), True, True));

		array_push($cp, array('$O : ' . $op, 'us_ativo', msg('status'), '1', True, True));
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
	
	function forgot_password($email)
		{
			$sql = "select * from usuario where us_email = '$email' ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			if (count($rlt) > 0)
				{
					$line = $rlt[0];
					$pass = $line['us_senha'];
					$id = $line['id_us'];
					
					$this->load->model('messages');
					$messa = $this->messages->recover('send_forgot_password',$line);
					
					if (count($messa) < 1)
						{
							return(-2);
						}
					return(1);
				} else {
					$ok = -1;
					return($ok);
				}
		}

}
?>
