<?php
class teams extends CI_Model
	{
	function show_team($id=0)
		{
			$proto = strzero($id,7);	
			$sql = "select * from cep_submit_team
					inner join usuario on us_codigo = ct_author
					where ct_protocol = '$proto' ";

			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			
			$sx = '<table class="table lt2">';
			$sx .= '<tr><th colspan="6" class="lt3">'.msg('team').'</th></tr>'.cr();
			$sx .= '<tr class="lt1">
						<th width="2%">#</th>
						<th width="70%">'.msg('us_name').'</th>
						<th width="27%">'.msg('type').'</th>
					</tr>';
			$tot = 0;
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$tot++;
					$sx .= '<tr>';
					$sx .= '<td>'.$tot.'</td>';
					$sx .= '<td>'.$line['us_nome'].'</td>';
					$sx .= '<td>'.$line['ct_type'].'</td>';
					$sx .= '</tr>';
				}
			$sx .= '</table>';
			return($sx);
		}	
		
	function team_new_member($id=0)
		{
			$sx = '';
			$sx .= '<div>';
			$sx .= '<button type="button" class="btn btn-default btn-group-sm">'.msg('add_new_member').'</button>';
			$sx .= '</div>';
			return($sx);
		}
	}
?>
