<?php
class fields extends CI_model {
	function row_records($type, $pag) {
		$sql = "select * from cep_submit_manuscrito_field 
					where sub_projeto_tipo = '$type' 
							and sub_pag = $pag
							and sub_ativo = 1
				order by sub_pos, sub_ordem ";

		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '<table class="table" width="100%">';
		$sx .= '
				<tr>
					<th width="3%">#</th>
					<th width="3%">'.msg('pos').'</th>
					<th width="30%">'.msg('description').'</th>
					<th width="14%">'.msg('type').'</th>
					<th width="50%">'.msg('templat').'</th>
				</tr>';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$sx .= '<tr valign="top">';
			$sx .= '<td align="center" width="3%">';
			$sx .= ($r+1);
			$sx .= '</td>';
			
			$sx .= '<td align="center" width="3%">';
			$sx .= strzero($line['sub_pos'],2).'.'.strzero($line['sub_ordem'],2);
			$sx .= '</td>';
			
			$sx .= '<td>';
			$sx .= $line['sub_descricao'];
			$sx .= '</td>';
			
			$sx .= '<td>';
			$sx .= $line['sub_field'];
			$sx .= '</td>';			
			
			$type = $line['sub_field'];
			if (substr($type,0,2)=='$S') { $type = '$S'; }
			if (substr($type,0,2)=='${') { $type = '$FIELDSET'; }
			if (substr($type,0,2)=='$O') { $type = '$O'; }
			if (substr($type,0,2)=='$Q') { $type = '$Q'; }
			if (substr($type,0,2)=='$T') { $type = '$T'.substr($type,strpos($type,':')+1,20); }
			
			$type = troca($type,':','-');
			$type = troca($type,'$','');
			$img = 'form_'.$type.'.png';
			$filename = 'img/forms/'.$img;
			$sx .= '<td>';
			$sx .= $type;
			if (file_exists($filename))
			{
				$sx .= '<img src="'.base_url('img/forms/'.$img).'" width="100%">';	
			}
			
			$sx .= '</td>';
			
			$sx .= '</tr>';
		}
		$sx .= '</table>';
		return ($sx);
	}

}
?>
