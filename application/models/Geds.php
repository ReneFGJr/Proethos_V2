<?php
class geds extends CI_Model
	{
	function file_list($id)
		{
			$sx = '<table class="table lt1" width="100%">';
			$sx .= '<tr>
						<th width="3%">#</th>
						<th>'.msg('filename').'</th>
						<th width="5%">'.msg('size').'</th>
						<th width="5%">'.msg('date').'</th>
						
					';
			$sx .= '</table>';
			return($sx);
		}	
	}
?>
