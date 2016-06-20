<?php
class projects extends CI_Model {
	var $tabela = 'cep_protocolos';
	var $validate = 0;
	
	function save_protocol($proto='',$type='',$pag='')
		{
		$page = strzero($pag,3);
		$sql = "delete from cep_submit_documento_valor 
					where spc_projeto = '$proto' 
							and spc_pagina = '$page'
							and spc_ativo = 1 ";
							echo $sql;
		$rlt = $this -> db -> query($sql);
		
		$sql = "select * from cep_submit_manuscrito_field 
					where sub_projeto_tipo = '$type' 
							and sub_pag = $pag
							and sub_ativo = 1
				order by sub_pos, sub_ordem, id_sub ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
			
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$dd = get('dd'.($r+2));
					$autor = $_SESSION['badge'];
					$vapt = msg($line['sub_descricao']);
					$codigo = $line['sub_codigo'];

					$sql = "insert into cep_submit_documento_valor
							(
								spc_codigo, spc_projeto, spc_content, 
								spc_ativo, spc_pagina, spc_autor
							) values (
								'$codigo','$proto','$dd',
								'1','$page','$autor'
							)
							";
					$this->db->query($sql);
				} 
			return(1);
		}	

	function cp_01() {
		$cp = array();
		array_push($cp, array('$H8', 'id_cep', '', False, True));
		array_push($cp, array('$R 1:' . msg('yes') . '&0:' . msg('no'), 'cep_clinic', msg('q_clinic_study'), True, True));
		array_push($cp, array('$T80:5', 'cep_titulo', msg('title_main'), True, True));
		array_push($cp, array('$T80:5', 'cep_titulo_public', msg('title_public'), True, True));
		array_push($cp, array('$S50', 'cep_acronym', msg('title_acronym'), False, True));
		array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function records($cp, $pag, $type, $id=0) {
		$proto = strzero($id,7);
		$sql = "select * from cep_submit_manuscrito_field
					LEFT JOIN cep_submit_documento_valor on spc_codigo = sub_codigo AND spc_projeto = '$proto'
					WHERE sub_projeto_tipo = '$type' 
							and sub_pag = $pag
							and sub_ativo = 1
				order by sub_pos, sub_ordem, id_sub";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$tipo = $line['sub_field'];
			$vapt = msg($line['sub_descricao']);

			$vlr = $line['spc_content'];
			$_POST['dd'.($r+2)] = $vlr;	
			
			/* TEAM */
			//echo '<br>'.$tipo;
			switch ($tipo) {
				case '$TEAM' :
					/* team */
					$edit = 1;
					$team = '';
					$team .= '<div id="team">';
					$team .= $this -> teams -> show_team($id,$edit);
					$team .= '</div>';
					$team .= '<hr>';
					$team .= $this->load->view('modal_team',null,true);
					$team .= $this->load->view('modal_team',null,true);
					$team .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/team.js').'"></script>';					
					array_push($cp, array('$M', '', $team, False, True));
					break;
				case '$COUNTRY':
					/* country */
					$edit = 1;
					$country = '<div id="country">';
					$country .= $this -> countries -> show($id,$edit);
					$country .= '</div>';
					$country .= $this->load->view('modal_country',null,true);
					$country .= $this->countries->novo_form($proto);
					$country .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/country.js').'"></script>';
					array_push($cp, array('$M', '', $country, False, True));
					break;
				case '$CRONO':
					break;
				case '$BUDGET':
					/* budget */
					$edit = 1;
					$budget = '<div id="budget">';
					$budget .= $this -> budgets -> show($id,$edit);
					$budget .= '</div>';
					$budget .= $this->load->view('modal_budget',null,true);
					$budget .= $this->budgets->novo_form($proto);
					$budget .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/budget.js').'"></script>';
					array_push($cp, array('$M', '', $budget, False, True));					
					break;
				case '$REGISTER_S':
					break;
				case '$REGISTER_P':
					/* primary register */
					$edit = 1;
					$budget = '<div id="pr">';
					$budget .= $this -> primary_registration -> show($id,$edit);
					$budget .= '</div>';
					$budget .= $this->load->view('modal_budget',null,true);
					$budget .= $this->primary_registration->novo_form($proto);
					$budget .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/register_p.js').'"></script>';
					array_push($cp, array('$M', '', $budget, False, True));					
					break;
				case '$FILE':
					break;					
				default :
					array_push($cp, array($tipo, '', $vapt, $line['sub_obrigatorio'], True));
					break;
			}

		}
		return ($cp);
	}

	function cp_02($id = '') {
		$cp = array();

		array_push($cp, array('$H8', 'id_cep', '', False, True));
		$pag = 2;
		$type = '00001';
		$cp = $this -> records($cp, $pag, $type, $id);
		//array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function cp_03($id = '') {
		$cp = array();

		array_push($cp, array('$H8', 'id_cep', '', False, True));
		$pag = 3;
		$type = '00001';
		$cp = $this -> records($cp, $pag, $type, $id);
		//array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function cp_04($id = '') {
		$cp = array();

		array_push($cp, array('$H8', 'id_cep', '', False, True));
		$pag = 4;
		$type = '00001';
		$cp = $this -> records($cp, $pag, $type, $id);
		//array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function cp_05($id = '') {
		$cp = array();

		array_push($cp, array('$H8', 'id_cep', '', False, True));
		$pag = 5;
		$type = '00001';
		$cp = $this -> records($cp, $pag, $type, $id);
		//array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function cp_06($id = '') {
		$cp = array();

		array_push($cp, array('$H8', 'id_cep', '', False, True));
		$pag = 6;
		$type = '00001';
		$cp = $this -> records($cp, $pag, $type, $id);
		//array_push($cp, array('$B8', '', msg('save_next'), False, True));
		return ($cp);
	}

	function cp_07($id = '') {
		$cp = array();

		/* validate */
		$valid = $this -> projects -> validate($id);

		array_push($cp, array('$H8', 'id_cep', '', False, True));

		array_push($cp, array('$A3', '', msg('submit_checklist'), False, True));
		array_push($cp, array('$M', '', $valid, False, True));

		if ($this -> validate == 0) {
			array_push($cp, array('$H8', '', '', True, True));
			$messa = '
					<div class="alert alert-danger" role="alert">
					  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					  <span class="sr-only">Error:</span>
					  ' . msg('pendding') . '
					</div>';
			array_push($cp, array('$M', '', $messa, False, True));
			array_push($cp, array('$B8', '', msg('save_next'), False, True));
		} else {
			array_push($cp, array('$HV', '', '1', True, True));
			$messa = '
					<div class="alert alert-success" role="alert">
					  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					  <span class="sr-only">Success:</span>
					  ' . msg('success') . '
					</div>';
			array_push($cp, array('$M', '', $messa, False, True));
			array_push($cp, array('$C1', '', msg('confirm'), True, True));
			array_push($cp, array('$B8', '', msg('finish'), False, True));
		}

		return ($cp);
	}

	function finish($id) {
		$this -> load -> model('submits');
		$this -> load -> model('messages');
		$this -> load -> model('historics');

		/* Insert Historic */
		$data = array('proto' => $id, 'comment' => get("comment"), 'cod' => '001', 'caae' => '');
		$this -> historics -> insert_historic($data);

		/* Change Status */
		$this -> submits -> change_status($id, 'A');
		$data['return'] = base_url('index.php/main/research');
		$this -> load -> view('successful', $data);

		/* Send e-mail */
		$proj = $this -> submits -> le($id);
		if (count($proj) > 0) {
			$id_us = $proj['cep_pesquisador'];
			$messa = $this -> messages -> recover("email_notify_subm", $proj);
			$this -> messages -> email_to_user($id_us, $messa, strzero($id, 7));
		}
	}

	function validate($id) {
		$this -> load -> model("ceps");

		$er = '<div class="alert-danger text-center" role="alert">' . msg('erro') . '</div>';
		$ok = '<div class="alert-success text-center" role="success">' . msg('ok') . '</div>';
		$erc = ' class="alert-danger danger" ';
		$okc = ' class="alert-success success" ';
		$ck = array($er, $er, $er, $er, $er, $er, $er, $er, $er, $er, $er, $er, $er);
		$cl = array($erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc, $erc);

		$sx = '<table class="table lt2">';
		$sx .= '<tr>
						<th width="90%">' . msg('fieldset') . '</th>
						<th width="10%">' . msg('check') . '</th>
					</tr>';
		/* ** 0 ***/
		$proj = $this -> ceps -> le($id);
		if (strlen($proj['cep_titulo']) > 0) { $ck[0] = $ok;
			$cl[0] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/1') . '" ' . $cl[0] . '>';
		$sx .= '<tr ' . $cl[0] . '><td>' . $link . msg('title_main') . '</a></td>
						<td>' . $link . $ck[0] . '</a></td></tr>' . cr();
		/* ** 1 ***/
		if (strlen($proj['cep_titulo_public']) > 0) { $ck[1] = $ok;
			$cl[1] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/1') . '" ' . $cl[1] . '>';
		$sx .= '<tr ' . $cl[1] . '><td>' . $link . msg('title_public') . '</a></td>
						<td>' . $ck[1] . '</td></tr>' . cr();
		/* ** 2 ***/
		if (strlen($proj['cep_fld_001']) > 0) { $ck[2] = $ok;
			$cl[2] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/2') . '" ' . $cl[2] . '>';
		$sx .= '<tr ' . $cl[2] . '><td>' . $link . msg('abstract') . '</a></td>
						<td>' . $ck[2] . '</td></tr>' . cr();
		/* ** 3 ***/
		if (strlen($proj['cep_fld_002']) > 0) { $ck[3] = $ok;
			$cl[3] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/2') . '" ' . $cl[3] . '>';
		$sx .= '<tr ' . $cl[3] . '><td>' . $link . msg('keywords') . '</a></td>
						<td>' . $ck[3] . '</td></tr>' . cr();
		/* ** 4 ***/
		if (strlen($proj['cep_fld_003']) > 0) { $ck[4] = $ok;
			$cl[4] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/2') . '" ' . $cl[4] . '>';
		$sx .= '<tr ' . $cl[4] . '><td>' . $link . msg('introduction') . '</a></td>
						<td>' . $ck[4] . '</td></tr>' . cr();
		/* ** 5 ***/
		if (strlen($proj['cep_fld_004']) > 0) { $ck[5] = $ok;
			$cl[5] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/2') . '" ' . $cl[5] . '>';
		$sx .= '<tr ' . $cl[5] . '><td>' . $link . msg('justificativa') . '</a></td>
						<td>' . $ck[5] . '</td></tr>' . cr();
		/* ** 6 ***/
		if (strlen($proj['cep_fld_005']) > 0) { $ck[6] = $ok;
			$cl[6] = $okc;
		}
		$link = '<a href="' . base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/2') . '" ' . $cl[6] . '>';
		$sx .= '<tr ' . $cl[6] . '><td>' . $link . msg('Objectives') . '</a></td>
						<td>' . $ck[6] . '</td></tr>' . cr();

		$sx .= '</table>';

		$xok = 1;
		for ($r = 0; $r <= 6; $r++) {
			if ($ck[$r] = !$ok) { $xok = 0;
			}
		}
		$this -> validate = $xok;
		return ($sx);
	}

}
?>
