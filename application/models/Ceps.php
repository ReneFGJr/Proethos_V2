<?php
class ceps extends CI_Model {
	var $tabela = 'cep_submit_documento';

	function le($id) {
		$id = round($id);
		$sql = "select * from cep_protocolos
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
		$sql = "select count(*) as total, doc_status from " . $this -> tabela . " group by doc_status order by doc_status";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$xlink = '';
		$active = '';
		$r = 0;
		$cp = array(0,0,0,0,0,0,0,0,0,0,0);
		$link = array('','','','','','','','','','','');
		$fld = array('subm_to_accept','secretaty_revision','pesq_revisao','pesq_assignada','pesq_reunion','research_ongoing','','','','');

		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$status = $line['doc_status'];
			echo '-->'.$status;
			switch ($status)
				{
				case 'A':
					$cp[0] = $line['total'];
					break;
				case 'E':
					$cp[1] = $line['total'];
					break;
				case 'P':
					$cp[5] = $line['total'];
					break;										
				}

		}
		$size = 6;
		$sz = (round(100 / $size) );

		$link[0] = '<a href="'.base_url('index.php/main/protocols/A').'" class="link lt8">';
		$link[1] = '<a href="'.base_url('index.php/main/protocols/E').'" class="link lt8">';
		$link[2] = '<a href="'.base_url('index.php/main/protocols/A').'" class="link lt8">';
		$link[3] = '<a href="'.base_url('index.php/main/protocols/A').'" class="link lt8">';
		$link[4] = '<a href="'.base_url('index.php/main/protocols/A').'" class="link lt8">';
		$link[5] = '<a href="'.base_url('index.php/main/protocols/P').'" class="link lt8">';
		
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
		$sql = "select * from cep_protocolos WHERE cep_pesquisador = '$id' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$link = '<a href="' . base_url('index.php/main/protocol/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '">';
			$sx .= '<tr>';
			$sx .= '<td>' . $link . $line['cep_caae'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . $line['cep_titulo'] . '</a>' . '</td>';
			$sx .= '<td>' . $link . stodbr($line['cep_atualizado']) . '</a>' . '</td>';
			$sx .= '<td>' . $link . msg($line['cep_pr_protocol']) . '</a>' . '</td>';
			$sx .= '</tr>';
		}
		return ($sx);
	}
	
	/*********** actions ****************/
	function validate_documments($id=0)
		{
			$sx = '
				<div class="panel panel-default">
				  <div class="panel-heading">'.msg('actions').'</div>
				  <div class="panel-body" id="pannel">
					    <button type="button" class="btn btn-primary" id="bt003">'.msg('action_003_return_sub').'</button>					    
					    <button type="button" class="btn btn-primary" id="bt009">'.msg('action_009_accept').'</button>
				</div>
				<div class="panel-body" id="pannel_action">';
						
			$sx .= $this->action_003($id);
						
			$sx .= '</div></div>';
			
			return($sx);
		}
	function action_003($id=0)
		{
			$sx = '';
			$sx .= '<div class="rows" style="display: none;" id="ac003">';
			$sx .= '<h4>'.msg('action_accept_rejected').'<h4>';
			$sx .= '<font class="lt1">'.msg('action_reason_rejected').'</font>';
			$sx .= '<textarea name="dd1" class="form_textarea" rows="6">'.get("dd1").'</textarea><br><br>';
			$sx .= '<input type="submit" class="btn btn-default" id="bt009" value="'.msg('action_rejection').'">';
			$sx .= ' ';
			$sx .= '<input type="button" class="btn btn-default" id="bt009" value="'.msg('cancel').'">';
			$sx .= '</div>';
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/js003.js').'"></script>';
			return($sx);
		}
}
?>
