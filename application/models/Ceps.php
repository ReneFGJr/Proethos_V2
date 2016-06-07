<?php
class ceps extends CI_Model {
	var $tabela = 'cep_protocolos';

	function le($id) {
		$id = round($id);
		$sql = "select * from " . $this -> tabela . "
							where id_cep = $id ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$line = $rlt[0];
			$line['cep_authors'] = 'Authores';
			return ($line);
		}
		return ( array());
	}

	function resume_committee() {
		$sql = "select count(*) as total, cep_status 
					FROM " . $this -> tabela . " 
					GROUP BY cep_status 
					ORDER BY cep_status";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$xlink = '';
		$active = '';
		$r = 0;
		$cp = array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		$link = array('', '', '', '', '', '', '', '', '', '', '');
		$fld = array('subm_to_accept', 'pesq_check', 'pesq_reunion', 'secretaty_revision', 'pesq_revisao', 'pesq_assignada', 'pesq_reunion', 'research_ongoing', '', '', '', '');

		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$status = $line['cep_status'];
			echo '-->' . $status . ' (' . $line['total'] . ')';
			switch ($status) {
				case 'A' :
					$cp[0] = $line['total'];
					break;
				case 'H' :
					$cp[1] = $line['total'];
					break;
				case 'B' :
					$cp[3] = $line['total'];
					break;
				case 'C' :
					$cp[4] = $line['total'];
					break;
				case 'D' :
					$cp[6] = $line['total'];
					break;
				case 'E' :
					$cp[2] = $line['total'];
					break;
				case 'P' :
					$cp[5] = $line['total'];
					break;
			}

		}
		$size = 7;
		$sz = (round(100 / $size));

		$link[0] = '<a href="' . base_url('index.php/main/protocols/A') . '" class="link lt8">';
		$link[1] = '<a href="' . base_url('index.php/main/protocols/H') . '" class="link lt8">';
		$link[2] = '<a href="' . base_url('index.php/main/protocols/E') . '" class="link lt8">';
		$link[3] = '<a href="' . base_url('index.php/main/protocols/B') . '" class="link lt8">';
		$link[4] = '<a href="' . base_url('index.php/main/protocols/C') . '" class="link lt8">';
		$link[5] = '<a href="' . base_url('index.php/main/protocols/H') . '" class="link lt8">';
		$link[6] = '<a href="' . base_url('index.php/main/protocols/P') . '" class="link lt8">';
		$link[7] = '<a href="' . base_url('index.php/main/protocols/D') . '" class="link lt8">';

		$sx = '<table width="100%">';
		$sx .= '<tr align="center" class="lt1 font">';
		$sx .= '<td>&nbsp</td>';
		for ($r = 0; $r < $size; $r++) {
			$sx .= '<td width="' . $sz . '%">' . msg($fld[$r]) . '</td>';
			$sx .= '<td>&nbsp</td>';
		}
		$sx .= '</tr>' . cr();

		$sx .= '<tr align="center">';
		$sx .= '<td>&nbsp</td>';
		for ($r = 0; $r < $size; $r++) {
			$sx .= '<td class="lt9 border1 pad5">';
			$sx .= $link[$r] . $cp[$r] . '</a>';
			$sx .= '</td>';
			$sx .= '<td>&nbsp</td>';
		}
		$sx .= '</tr>' . cr();
		$sx .= '</table>';
		return ($sx);

	}

	function resume_investigator($id) {
		$id = strzero($id, 7);
		$sql = "select * from " . $this -> tabela . " WHERE cep_pesquisador = '$id' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '<table class="table" width="100%">';
		$sx .= '<tr style="font-size: 12px;">
    				<th width="10%">'.msg("caae").'</th>
    				<th width="60%">'.msg("protocol_title").'</th>
    				<th width="10%">'.msg("last_update").'</th>
    				<th width="20%">'.msg("status").'</th>
    			</tr>';	
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$cep_status = $line['cep_status'];

			$class = '';
			$link = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '">';
			switch ($cep_status) {
				case '@' :
					$linke = '<a href="' . base_url('index.php/submit/project_edit/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
					break;
				case '!' :
					$linke = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
					$class = ' style="background-color: #FFE0E0" ';
					break;
				default :
					$linke = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-search" aria-hidden="true"></span>';
					break;
			}
			$sx .= '<tr ' . $class . '>';
			$sx .= '<td>' . $link . $line['cep_caae'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . $line['cep_titulo'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . stodbr($line['cep_atualizado']) . '</a>' . '</td>';
			$sx .= '<td>' . $link . msg('cep_status_' . $cep_status) . '</a>' . '</td>';
			$sx .= '<td>' . $linke . $btn . '</a>' . '</td>';
			$sx .= '</tr>';
		}
		$sx .= '</table>';
		return ($sx);
	}

	/************************************/
	function meeting_documments($id = 0) {
		$this -> load -> model('messages');
		$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">' . msg('actions') . '</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt003">' . msg('action_003_return_sub') . '</button>					    
					    <button type="button" class="btn btn-primary" id="bt009">' . msg('action_009_accept') . '</button>
				</div>
				<div class="panel-body" id="pannel_action">';

		$sx .= $this -> action_004($id);
		$sx .= $this -> action_005($id);

		$sx .= '</div></div>';

		return ($sx);
	}

	/*********** actions ****************/
	function validate_documments($id = 0) {
		$this -> load -> model('messages');
		$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">' . msg('actions') . '</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt003">' . msg('action_003_return_sub') . '</button>					    
					    <button type="button" class="btn btn-primary" id="bt009">' . msg('action_009_accept') . '</button>
				</div>
				<div class="panel-body" id="pannel_action">';

		$sx .= $this -> action_003($id);
		$sx .= $this -> action_009($id);

		$sx .= '</div></div>';

		return ($sx);
	}

	function complement_documments($id = 0) {
		$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">' . msg('actions') . '</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt002">' . msg('action_002_edit') . '</button>					    
					    <button type="button" class="btn btn-danger" id="bt999">' . msg('action_999_cancel') . '</button>
				</div>
				<div class="panel-body" id="pannel_action">';

		$sx .= $this -> action_002($id);
		$sx .= $this -> action_999($id);

		$sx .= '</div></div>';

		return ($sx);
	}

	function submit_documments($id = 0) {
		$link = base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id));
		$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">' . msg('actions') . '</div>
				  <div class="panel-body" id="pannel">
					    <a href="' . $link . '"><button type="button" class="btn btn-primary" id="bt001">' . msg('action_001_edit') . '</button></a>					    
					    <button type="button" class="btn btn-danger" id="bt999">' . msg('action_999_cancel') . '</button>
				</div>
				<div class="panel-body" id="pannel_action">';

		$sx .= $this -> action_001($id);
		$sx .= $this -> action_999($id);

		$sx .= '</div></div>';

		return ($sx);
	}

	/* Reactive to edition */
	function action_001($id = 0) {

	}

	/* Reactive to edition */
	function action_002($id = 0) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac002">';
		$sx .= '	<h4>' . msg('action_confirm_reedit') . '<h4>';

		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-8">';
		$sx .= '			<input type="hidden" id="mail" value="1" checked> ';
		$sx .= '			<input type="submit" class="btn btn-primary" id="bt002a" value="' . msg('yes') . '">';
		$sx .= ' ';
		$sx .= '			<input type="button" class="btn btn-default" id="bt002c" value="' . msg('cancel') . '">';
		$sx .= '			<input type="hidden" id="proto2" name="proto2" value="' . $id . '">';
		$sx .= '			<input type="hidden" id="check2" name="check2" value="' . checkpost_link($id) . '">';
		$sx .= '			<input type="hidden" id="link2"  name="link2"  value="' . base_url('index.php/ajax/action/002') . '">';
		$sx .= '		</div>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x003x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js002.js') . '"></script>' . cr();
		return ($sx);
	}

	/* rejection */
	function action_003($id = 0) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac003">';
		$sx .= '	<h4>' . msg('action_accept_rejected') . '<h4>';
		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-12">';
		$sx .= '			<font class="lt1">' . msg('action_reason_rejected') . '</font>';
		$sx .= '			<textarea name="dd1" id="bt003t" class="form_textarea" rows="6">' . get("dd1") . '</textarea><br><br>';
		$sx .= '		</div>' . cr();
		$sx .= '	</div>' . cr();

		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-8">';
		$sx .= '			<input type="checkbox" id="mail" value="1" checked> ';
		$sx .= $this -> messages -> email_icone("xx") . ' ' . msg('send_email');
		$sx .= '		</div>';
		$sx .= '		<div class="col-md-4 text-right">';
		$sx .= '			<input type="submit" class="btn btn-primary" id="bt003a" value="' . msg('action_rejection') . '">';
		$sx .= ' ';
		$sx .= '			<input type="button" class="btn btn-default" id="bt003c" value="' . msg('cancel') . '">';
		$sx .= '			<input type="hidden" id="proto3" name="proto" value="' . $id . '">';
		$sx .= '			<input type="hidden" id="check3" name="check" value="' . checkpost_link($id) . '">';
		$sx .= '			<input type="hidden" id="link3"  name="link3"  value="' . base_url('index.php/ajax/action/003') . '">';
		$sx .= '		</div>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x003x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js003.js') . '"></script>' . cr();
		return ($sx);
	}

	/* rejection */
	function action_004($id = 0) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac004">';
		$sx .= '	<h4>' . msg('action_accept_niec') . '<h4>';
		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-12">';
		$sx .= '			<font class="lt1">' . msg('action_reason_rejected') . '</font>';
		$sx .= '			<textarea name="dd1" id="bt003t" class="form_textarea" rows="6">' . get("dd1") . '</textarea><br><br>';
		$sx .= '		</div>' . cr();
		$sx .= '	</div>' . cr();

		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-8">';
		$sx .= '			<input type="checkbox" id="mail" value="1" checked> ';
		$sx .= $this -> messages -> email_icone("xx") . ' ' . msg('send_email');
		$sx .= '		</div>';
		$sx .= '		<div class="col-md-4 text-right">';
		$sx .= '			<input type="submit" class="btn btn-primary" id="bt004a" value="' . msg('action_rejection') . '">';
		$sx .= ' ';
		$sx .= '			<input type="button" class="btn btn-default" id="bt004c" value="' . msg('cancel') . '">';
		$sx .= '			<input type="hidden" id="proto4" name="proto4" value="' . $id . '">';
		$sx .= '			<input type="hidden" id="check4" name="check4" value="' . checkpost_link($id) . '">';
		$sx .= '			<input type="hidden" id="link4"  name="link4"  value="' . base_url('index.php/ajax/action/004') . '">';
		$sx .= '		</div>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x003x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js004.js') . '"></script>' . cr();
		return ($sx);
	}

	/* rejection */
	function action_005($id = 0) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac005">';
		$sx .= '	<h4>' . msg('action_accept_niec') . '<h4>';
		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-12">';
		$sx .= '			<font class="lt1">' . msg('action_reason_rejected') . '</font>';
		$sx .= '			<textarea name="dd1" id="bt003t" class="form_textarea" rows="6">' . get("dd1") . '</textarea><br><br>';
		$sx .= '		</div>' . cr();
		$sx .= '	</div>' . cr();

		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-8">';
		$sx .= '			<input type="checkbox" id="mail" value="1" checked> ';
		$sx .= $this -> messages -> email_icone("xx") . ' ' . msg('send_email');
		$sx .= '		</div>';
		$sx .= '		<div class="col-md-4 text-right">';
		$sx .= '			<input type="submit" class="btn btn-primary" id="bt005a" value="' . msg('action_rejection') . '">';
		$sx .= ' ';
		$sx .= '			<input type="button" class="btn btn-default" id="bt005c" value="' . msg('cancel') . '">';
		$sx .= '			<input type="hidden" id="proto5" name="proto5" value="' . $id . '">';
		$sx .= '			<input type="hidden" id="check5" name="check5" value="' . checkpost_link($id) . '">';
		$sx .= '			<input type="hidden" id="link5"  name="link5"  value="' . base_url('index.php/ajax/action/004') . '">';
		$sx .= '		</div>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x003x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js005.js') . '"></script>' . cr();
		return ($sx);
	}

	/* accept */
	function action_009($id = 9) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac009">';
		$sx .= '<h4>' . msg('action_accept_manuscrit') . '<h4>';
		$sx .= '<div class="row">' . cr();
		$sx .= '	<div class="col-md-12">';
		$sx .= '		<font class="lt1">' . msg('action_accept_manuscrit_inf') . '</font>';
		$sx .= '		<br><br>';
		$sx .= '	</div>' . cr();

		$sx .= '	<div class="alert alert-info col-md-12" role="alert">';
		$sx .= '		<input type="radio" name="dd1" value="1" id="bt009t"> ' . msg('action_need_consultation');
		$sx .= '	</div>';

		$sx .= '	<div class="alert alert-info col-md-12" role="alert">';
		$sx .= '		<input type="radio" name="dd1" value="2" id="bt009t"> ' . msg('action_accept_direct') . '<br>';
		$sx .= '	</div>';

		$sx .= '	<div class="col-md-12"><br></div>';

		$sx .= '	<div class="col-md-8">';
		$sx .= '		<input type="checkbox" id="mail" value="1" checked> ';
		$sx .= $this -> messages -> email_icone("xx") . ' ' . msg('send_email');
		$sx .= '	</div>';

		$sx .= '	<div class="col-md-4 text-right">';
		$sx .= '		<input type="submit" class="btn btn-primary" id="bt009a" value="' . msg('action_send_botton') . '">';
		$sx .= ' ';
		$sx .= '		<input type="button" class="btn btn-default" id="bt009c" value="' . msg('cancel') . '">';
		$sx .= '		<input type="hidden" id="proto9" name="proto9" value="' . $id . '">';
		$sx .= '		<input type="hidden" id="check9" name="check9" value="' . checkpost_link($id) . '">';
		$sx .= '		<input type="hidden" id="link9"  name="link9"  value="' . base_url('index.php/ajax/action/009') . '">';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		$sx .= '</div>' . cr();
		//$sx .= 'x009x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js009.js') . '"></script>' . cr();
		return ($sx);
	}

	/* SURVEY */
	function action_006($id = 0) {
		$data = array();
		$data['id'] = $id;
		$sx = $this -> load -> view('committee/survey.php', $data, true);
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js00H.js') . '"></script>' . cr();
		return ($sx);
	}

	/* SURVEY DECISION */
	function action_007($id = 0) {
		$data = array();
		$data['total_yes'] = 0;
		$data['total_no'] = 0;
		$sx = '';
		$sx .= '<div class="rows" id="ac007">';

		$sx .= $this->load->view('committee/survey_abstract',$data,true);
		$sx .= '<div class="row">'.cr();
		$sx .= '	<div class="col-md-12">';
		$sx .= '	<h3>' . msg('action_accept_016') . '</h3>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();

		$sx .= '<div class="row">'.cr();
		$sx .= '	<div class="col-md-12">';
		$sx .= '		<p>';
		$sx .= 			msg('accept_manu_survey_direct');
		$sx .= '		<input type="radio" name="bt007v" id="bt007v1" value 1> '.msg('yes_accept');
		$sx .= '		<input type="radio" name="bt007v" id="bt007v2" value=2> '.msg('yes_isento');
		$sx .= '		</p>';

		$sx .= '		<input type="submit" class="btn btn-primary" id="bt007a" value="' . msg('action_survey') . '">';
		$sx .= ' ';
		$sx .= '		<input type="hidden" id="proto7" name="proto7" value="' . $id . '">';
		$sx .= '		<input type="hidden" id="check7" name="check7" value="' . checkpost_link($id) . '">';
		$sx .= '		<input type="hidden" id="link7"  name="link7"  value="' . base_url('index.php/ajax/action/007') . '">';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x009x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js007.js') . '"></script>' . cr();
		return ($sx);
	}

	/* Reactive to edition */
	function action_999($id = 0) {
		$sx = '';
		$sx .= '<div class="rows" style="display: none;" id="ac999">';
		$sx .= '	<h4>' . msg('action_confirm_cancel') . '<h4>';

		$sx .= '	<div class="row">' . cr();
		$sx .= '		<div class="col-md-8">';
		$sx .= '			<input type="hidden" id="mail" value="1" checked> ';
		$sx .= '			<input type="submit" class="btn btn-primary" id="bt999a" value="' . msg('yes') . '">';
		$sx .= ' ';
		$sx .= '			<input type="button" class="btn btn-default" id="bt999c" value="' . msg('cancel') . '">';
		$sx .= '			<input type="hidden" id="proto9" name="proto9" value="' . $id . '">';
		$sx .= '			<input type="hidden" id="check9" name="check9" value="' . checkpost_link($id) . '">';
		$sx .= '			<input type="hidden" id="link9"  name="link9"  value="' . base_url('index.php/ajax/action/999') . '">';
		$sx .= '		</div>';
		$sx .= '	</div>';
		$sx .= '</div>' . cr();
		//$sx .= 'x003x';
		$sx .= '<script language="JavaScript" type="text/javascript" src="' . base_url('js/action/js999.js') . '"></script>' . cr();
		return ($sx);
	}

	function niec_set($id) {
		$this -> niec_next();
		return ('');

		$sql = "select * from " . $this -> tabela . " where id_cep = " . $id;
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$cline = $rlt[0];
			if (strlen($cline['cep_caae']) == 0) {
				$sql = "select * from _committee limit 1";
				$rlt = $this -> db -> query($sql);
				$rlt = $rlt -> result_array();
				if (count($rlt) > 0) {
					$line = $rlt[0];
					$pre = trim($line['cm_committe']);

					/* Number */
					$nra = substr(date("Y"), 2, 2);
					$nra .= strzero($line['cm_niec'] + 1, 5);

					$versao = strzero($cline['cep_versao'], 3);
					$niec = $pre . '.' . $nra . '.' . $versao;
					$sql = "update " . $this -> tabela . " set cep_caae = '" . $niec . "' where id_cep = " . $cline['id_cep'];
					$this -> db -> query($sql);
				}
			}

		}

	}

	function niec_next() {
		$sql = "select cep_caae from " . $this -> tabela . " order by cep_caae desc limit 1";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$line = $rlt[0];
			$niec = trim($line['cep_caae']);
			$niec = round(sonumero(substr($niec, 0, strlen($niec) - 3)));
			$niec++;
		} else {
			$niec = 1;
		}
		$sql = "update _committee set cm_niec = $niec ";
		$rlt = $this -> db -> query($sql);

		return (1);
	}

	function survey_members($id) {
		$data = array();
		$messa = $this -> messages -> recover('survey_email', $data);

		$sql = "select * from usuario where us_perfil like '%#MEM%' and us_ativo = 1";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '<table class="table lt1" width="100%">';
		$sx .= '<tr><th>' . msg('member') . '</th><th>' . msg('email') . '</th><th>' . msg('status') . '</th></tr>' . cr();
		$tot = 0;
		$proto = '';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$tot++;
			$status = msg('send_mail');
			$id_us = $line['id_us'];
			$sx .= '<tr>';
			$sx .= '<td>' . $line['us_nome'] . '</td>';
			$sx .= '<td>' . $line['us_email'] . '</td>';

			$ok = $this -> messages -> email_to_user($id_us, $messa, $proto);
			$sx .= '<td class="alert alert-success">' . $ok . '</td>';

		}
		$sx .= '<tr><td>' . msg('sent_to') . ' ' . $tot . ' ' . msg('members') . '</td></tr>' . cr();
		$sx .= '</table>';
		return ($sx);
	}

	function show_protocols($status = '') {
		$sql = "select * from " . $this -> tabela . "
					left join usuario on cep_pesquisador = us_codigo
					left join (select count(*) as comments, cepc_codigo from cep_comment group by cepc_codigo) as comments on cepc_codigo = cep_protocol
					where cep_status = '$status' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();

		$tot = 0;
		$sx = '';
		$sx .= '<h1>' . msg('cep_status_' . $status) . '</h1>' . cr();
		$sx .= '<table width="100%" class="table lt2">';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$link = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '" class="lt3">';
			$tot++;
			$sx .= '<tr>';
			$sx .= '<td width="2%" align="center">';
			$sx .= $tot;
			$sx .= '</td>';
			$sx .= '<td>';
			$sx .= $link . $line['cep_titulo'] . '</a>';
			$sx .= '<br><font class="lt1"><i>' . $line['us_nome'] . '</i></font>';
			$sx .= '<br><font class="lt0">' . msg('update') . ': ' . stodbr($line['cep_atualizado']) . '</font>';
			$sx .= ' - ';
			$sx .= '<font class="lt0">' . round($line['comments']) . ' ' . msg('comment') . '</fonts>';
			$sx .= '</td>';

			$sx .= '<td width="2%">';
			$sx .= $link;
			$sx .= '<span class="glyphicon glyphicon-search" aria-hidden="true"></span>';
			$sx .= '</a>';
			$sx .= '</td>';
		}
		$sx .= '<tr><td colspan="10">' . msg('total') . ' ' . $tot . ' ' . msg('records') . '</td></tr>' . cr();
		$sx .= '</table>';
		return ($sx);
	}

	function survey($id) {
		$data['content'] = $this -> action_006($id);
		$this -> load -> view('content', $data);
	}

	function survey_voted($proto, $id) {
		$proto = strzero($proto, 7);
		$id_us = strzero($id, 7);

		$sql = "select * from cep_survey where sr_protocolo = '$proto' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$ok = 0;
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			if ($line['sr_member'] == $id_us) { $ok = 1;
			}
		}
		$tot = count($rlt);

		return ( array($ok, $tot));
	}

	function survey_answer($proto, $id, $answer) {
		$id_us = strzero($id, 7);
		$proto = strzero($proto, 7);
		$date = date("Ymd");
		$time = date("H:i");
		$ip = ip();
		$yes = 1;
		$no = 0;
		echo '-=->' . $answer;
		if ($answer == 0) {
			$yes = 0;
			$no = 1;
		}

		$sql = "select * from cep_survey where sr_protocolo = '$proto' and sr_member = '$id_us' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0) {
			$line = $rlt[0];
			$sql = "update cep_survey set sr_yes = $yes, sr_no = $no,
			sr_date = '$date', sr_time='$time',
			sr_ip = '$ip' 
					where id_sr = " . $line['id_sr'];
			$rlt = $this -> db -> query($sql);
		} else {
			$sql = "insert into cep_survey
							(
							sr_protocolo, sr_member, 
							sr_yes, sr_no,
							sr_date, sr_time, 
							sr_ip)
							values
							(
							'$proto','$id_us',
							$yes, $no,
							'$date','$time',
							'$ip'
							) 
					";
			$rlt = $this -> db -> query($sql);
		}
		echo '<hr>' . $sql;
		return (1);
	}

	function survey_decision($id)
		{
		$data['content'] = $this -> action_007($id);
		$this -> load -> view('content', $data);			
		}

	function survey_enquete($id) {
		$id_us = $_SESSION['id'];
		$voted = $this -> ceps -> survey_voted($id, $id_us);
		print_r($voted);
		if ($voted[0] == 0) {
			$data['content'] = $this -> ceps -> survey($id);
			$this -> load -> view('content', $data);
		} else {
			$data['content'] = msg('survey_voted') . ', ' . msg('survey_in_progess');
			$data['type'] = 'info';
			$data['content_info'] = msg('total') . ' ' . $voted[1] . ' ' . msg('anwsers');
			$this -> load -> view('message', $data);
		}

	}

}
?>
