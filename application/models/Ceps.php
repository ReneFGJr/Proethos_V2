<?php
class ceps extends CI_Model {
	var $tabela = 'cep_protocolos';

	function le($id) {
		$id = round($id);
		$sql = "select * from ".$this->tabela."
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
		$cp = array(0,0,0,0,0,0,0,0,0,0,0);
		$link = array('','','','','','','','','','','');
		$fld = array('subm_to_accept','pesq_reunion','secretaty_revision','pesq_revisao','pesq_assignada','pesq_reunion','research_ongoing','','','','');

		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$status = $line['cep_status'];
			echo '-->'.$status. ' ('.$line['total'].')';
			switch ($status)
				{
				case 'A':
					$cp[0] = $line['total'];
					break;
				case 'B':
					$cp[3] = $line['total'];
					break;
				case 'C':
					$cp[4] = $line['total'];
					break;										
				case 'D':
					$cp[1] = $line['total'];
					break;
				case 'E':
					$cp[2] = $line['total'];
					break;
				case 'P':
					$cp[5] = $line['total'];
					break;										
				}

		}
		$size = 7;
		$sz = (round(100 / $size) );

		$link[0] = '<a href="'.base_url('index.php/main/protocols/A').'" class="link lt8">';
		$link[1] = '<a href="'.base_url('index.php/main/protocols/D').'" class="link lt8">';
		$link[2] = '<a href="'.base_url('index.php/main/protocols/E').'" class="link lt8">';
		$link[3] = '<a href="'.base_url('index.php/main/protocols/B').'" class="link lt8">';
		$link[4] = '<a href="'.base_url('index.php/main/protocols/C').'" class="link lt8">';
		$link[5] = '<a href="'.base_url('index.php/main/protocols/H').'" class="link lt8">';
		$link[6] = '<a href="'.base_url('index.php/main/protocols/P').'" class="link lt8">';
		
		$sx = '<table width="100%">';
		$sx .= '<tr align="center" class="lt2">';
		$sx .= '<td>&nbsp</td>';
		for ($r=0;$r < $size;$r++)
			{
				$sx .= '<td width="'.$sz.'%">'.msg($fld[$r]).'</td>';
				$sx .= '<td>&nbsp</td>';
			}
		$sx .= '</tr>'.cr();
		
		$sx .= '<tr align="center">';
		$sx .= '<td>&nbsp</td>';
		for ($r=0;$r < $size;$r++)
			{
				$sx .= '<td class="lt9 border1 pad5">';
				$sx .= $link[$r].$cp[$r].'</a>';
				$sx .= '</td>';
				$sx .= '<td>&nbsp</td>';
			}
		$sx .= '</tr>'.cr();
		$sx .= '</table>';
		return ($sx);

	}

	function resume_investigator($id) {
		$id = strzero($id, 7);
		$sql = "select * from ".$this->tabela." WHERE cep_pesquisador = '$id' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$cep_status = $line['cep_status'];
			
			$class = '';
			$link = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '">';
			switch ($cep_status)
				{
				case '@':
					$linke = '<a href="' . base_url('index.php/submit/project_edit/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
					break;
				case '!':
					$linke = '<a href="' . base_url('index.php/main/project/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
					$class = ' style="background-color: #FFE0E0" ';
					break;					
				default:
					$linke = '<a href="' . base_url('index.php/main/project/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '/1">';
					$btn = '<span class="glyphicon glyphicon-search" aria-hidden="true"></span>';
					break;					
				}
			$sx .= '<tr '.$class.'>';
			$sx .= '<td>' . $link . $line['cep_caae'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . $line['cep_titulo'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . stodbr($line['cep_atualizado']) . '</a>' . '</td>';
			$sx .= '<td>' . $link . msg('cep_status_'.$cep_status) . '</a>' . '</td>';
			$sx .= '<td>' . $linke . $btn . '</a>' . '</td>';
			$sx .= '</tr>';
		}
		return ($sx);
	}
	
	/*********** actions ****************/
	function validate_documments($id=0)
		{
			$this->load->model('messages');
			$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">'.msg('actions').'</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt003">'.msg('action_003_return_sub').'</button>					    
					    <button type="button" class="btn btn-primary" id="bt009">'.msg('action_009_accept').'</button>
				</div>
				<div class="panel-body" id="pannel_action">';
						
			$sx .= $this->action_003($id);
			$sx .= $this->action_009($id);
						
			$sx .= '</div></div>';
			
			return($sx);
		}
		
	function complement_documments($id=0)
		{
			$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">'.msg('actions').'</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt002">'.msg('action_002_edit').'</button>					    
					    <button type="button" class="btn btn-danger" id="bt999">'.msg('action_999_cancel').'</button>
				</div>
				<div class="panel-body" id="pannel_action">';
						
			$sx .= $this->action_002($id);
			$sx .= $this->action_999($id);
						
			$sx .= '</div></div>';
			
			return($sx);
		}

	function submit_documments($id=0)
		{
			$link = base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id));
			$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">'.msg('actions').'</div>
				  <div class="panel-body" id="pannel">
					    <a href="'.$link.'"><button type="button" class="btn btn-primary" id="bt001">'.msg('action_001_edit').'</button></a>					    
					    <button type="button" class="btn btn-danger" id="bt999">'.msg('action_999_cancel').'</button>
				</div>
				<div class="panel-body" id="pannel_action">';
						
			$sx .= $this->action_001($id);
			$sx .= $this->action_999($id);
						
			$sx .= '</div></div>';
			
			return($sx);
		}	
	/* Reactive to edition */	
	function action_001($id=0)
		{

		}
		
	/* Reactive to edition */	
	function action_002($id=0)
		{
			$sx = '';
			$sx .= '<div class="rows" style="display: none;" id="ac002">';
			$sx .= '	<h4>'.msg('action_confirm_reedit').'<h4>';
			
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="col-md-8">';
			$sx .= '			<input type="hidden" id="mail" value="1" checked> ';
			$sx .= '			<input type="submit" class="btn btn-primary" id="bt002a" value="'.msg('yes').'">';
			$sx .= ' ';
			$sx .= '			<input type="button" class="btn btn-default" id="bt002c" value="'.msg('cancel').'">';
			$sx .= '			<input type="hidden" id="proto2" name="proto2" value="'.$id.'">';
			$sx .= '			<input type="hidden" id="check2" name="check2" value="'.checkpost_link($id).'">';
			$sx .= '			<input type="hidden" id="link2"  name="link2"  value="'.base_url('index.php/ajax/action/002').'">';
			$sx .= '		</div>';
			$sx .= '	</div>';
			$sx .= '</div>'.cr();
			//$sx .= 'x003x';
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/js002.js').'"></script>'.cr();
			return($sx);
		}
		
	/* rejection */
	function action_003($id=0)
		{
			$sx = '';
			$sx .= '<div class="rows" style="display: none;" id="ac003">';
			$sx .= '	<h4>'.msg('action_accept_rejected').'<h4>';
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="col-md-12">';
			$sx .= '			<font class="lt1">'.msg('action_reason_rejected').'</font>';
			$sx .= '			<textarea name="dd1" id="bt003t" class="form_textarea" rows="6">'.get("dd1").'</textarea><br><br>';
			$sx .= '		</div>'.cr();
			$sx .= '	</div>'.cr();
			
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="col-md-8">';
			$sx .= '			<input type="checkbox" id="mail" value="1" checked> ';
			$sx .= 				$this->messages->email_icone("xx").' '.msg('send_email');
			$sx .= '		</div>';
			$sx .= '		<div class="col-md-4 text-right">';
			$sx .= '			<input type="submit" class="btn btn-primary" id="bt003a" value="'.msg('action_rejection').'">';
			$sx .= ' ';
			$sx .= '			<input type="button" class="btn btn-default" id="bt003c" value="'.msg('cancel').'">';
			$sx .= '			<input type="hidden" id="proto3" name="proto" value="'.$id.'">';
			$sx .= '			<input type="hidden" id="check3" name="check" value="'.checkpost_link($id).'">';
			$sx .= '			<input type="hidden" id="link3"  name="link3"  value="'.base_url('index.php/ajax/action/003').'">';
			$sx .= '		</div>';
			$sx .= '	</div>';
			$sx .= '</div>'.cr();
			//$sx .= 'x003x';
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/js003.js').'"></script>'.cr();
			return($sx);
		}
	/* accept */
	function action_009($id=9)
		{
			$sx = '';
			$sx .= '<div class="rows" style="display: none;" id="ac009">';
			$sx .= '<h4>'.msg('action_accept_manuscrit').'<h4>';
			$sx .= '<div class="row">'.cr();
			$sx .= '	<div class="col-md-12">';
			$sx .= '		<font class="lt1">'.msg('action_accept_manuscrit_inf').'</font>';
			$sx .= '		<br><br>';
			$sx .= '	</div>'.cr();
			
			$sx .= '	<div class="alert alert-info col-md-12" role="alert">';
			$sx .= '		<input type="radio" name="dd1" value="1" id="bt009t"> '.msg('action_need_consultation');			  
			$sx .= '	</div>';
			
			$sx .= '	<div class="alert alert-info col-md-12" role="alert">';
			$sx .= '		<input type="radio" name="dd1" value="2" id="bt009t"> '.msg('action_accept_direct').'<br>';			  
			$sx .= '	</div>';
			
			$sx .= '	<div class="col-md-12"><br></div>';
			
			$sx .= '	<div class="col-md-8">';
			$sx .= '		<input type="checkbox" id="mail" value="1" checked> ';
			$sx .= 			$this->messages->email_icone("xx").' '.msg('send_email');
			$sx .= '	</div>';
			
			$sx .= '	<div class="col-md-4 text-right">';
			$sx .= '		<input type="submit" class="btn btn-primary" id="bt009a" value="'.msg('action_send_botton').'">';
			$sx .= ' ';
			$sx .= '		<input type="button" class="btn btn-default" id="bt009c" value="'.msg('cancel').'">';
			$sx .= '		<input type="hidden" id="proto9" name="proto9" value="'.$id.'">';
			$sx .= '		<input type="hidden" id="check9" name="check9" value="'.checkpost_link($id).'">';
			$sx .= '		<input type="hidden" id="link9"  name="link9"  value="'.base_url('index.php/ajax/action/009').'">';
			$sx .= '	</div>';
			$sx .= '</div>'.cr();
			$sx .= '</div>'.cr();
			//$sx .= 'x009x';
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/js009.js').'"></script>'.cr();
			return($sx);
		}
	/* Reactive to edition */	
	function action_999($id=0)
		{
			$sx = '';
			$sx .= '<div class="rows" style="display: none;" id="ac999">';
			$sx .= '	<h4>'.msg('action_confirm_cancel').'<h4>';
			
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="col-md-8">';
			$sx .= '			<input type="hidden" id="mail" value="1" checked> ';
			$sx .= '			<input type="submit" class="btn btn-primary" id="bt999a" value="'.msg('yes').'">';
			$sx .= ' ';
			$sx .= '			<input type="button" class="btn btn-default" id="bt999c" value="'.msg('cancel').'">';
			$sx .= '			<input type="hidden" id="proto9" name="proto9" value="'.$id.'">';
			$sx .= '			<input type="hidden" id="check9" name="check9" value="'.checkpost_link($id).'">';
			$sx .= '			<input type="hidden" id="link9"  name="link9"  value="'.base_url('index.php/ajax/action/999').'">';
			$sx .= '		</div>';
			$sx .= '	</div>';
			$sx .= '</div>'.cr();
			//$sx .= 'x003x';
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/js999.js').'"></script>'.cr();
			return($sx);
		}
}
?>
