<?php
class teams extends CI_Model
	{
	function show_team($id=0,$edit=1,$erro='')
		{
			$proto = strzero($id,7);	
			$sql = "select * from cep_team
						INNER JOIN usuario ON us_codigo = ct_author
					where ct_protocol = '$proto' 
					order by ct_type, us_nome ";

			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			
			$sx = '<div id="team">';
			$sx .= '<table class="table lt2">';
			//$sx .= '<tr><th colspan="6" class="lt3">'.msg('team').'</th></tr>'.cr();
			$sx .= '<tr class="lt1">
						<th width="2%">#</th>
						<th width="70%">'.msg('us_name').'</th>
						<th width="22%">'.msg('type').'</th>
						<th width="5%">'.msg('contact').'</th>
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
					if ($line['ct_type'] != 'C')
						{
							$link = ' onclick="remove_team(\''.$line['id_ct'].'\',\''.checkpost_link($line['id_ct']).'\');" ';
							$sx .= '<td>'.'<span class="glyphicon glyphicon-trash" aria-hidden="true" style="cursor: pointer;" '.$link.'></span>'.'</td>';
						} else {
							$sx .= '<td>&nbsp;</td>';
						}
					
					$sx .= '</tr>';
				}
			$sx .= '</table>';
			if ($edit == 1)
				{
					$sx .= $this->team_new_member($id);
					$sx .= $erro;
				}
			$sx .= '</div>';
			return($sx);
		}	
		
	function team_new_member($id=0)
		{
			$sx = '';
			$sx .= '<div id="team_new">';
			$sx .= '<button type="button" id="new_research" class="btn btn-default btn-group-sm">'.msg('add_new_member').'</button>';
			$sx .= '</div>'.cr();
			
			
			$sx .= '<div id="team_form" style="display: none;">'.cr();
			/************************ ROW ****************************************************/
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="md-col-5 col-md-offset-1">'.cr();
			$sx .= '			<div class="input-group">'.cr();
			$sx .= '			  	<span class="input-group-addon" id="basic-addon1">'.msg('email_inform').'</span>'.cr();
			$sx .= '		      	<input type="text" id="team_email" class="form-control" style="width: 400px;" placeholder="Insert e-mail...">'.cr();
			$sx .= '		      	<input type="hidden" id="link" value="'.base_url('index.php/ajax/action/team/').'">'.cr();
			$sx .= '		      	<input type="hidden" id="check" value="'.checkpost_link($id).'">'.cr();
			$sx .= '		      	<input type="hidden" id="proto" value="'.strzero($id,7).'">'.cr();
			$sx .= '		      	<button class="btn btn-primary" type="button" id="team_submit">'.msg('new_author').'</button>'.cr();
			$sx .= '   			</div><!-- /input-group -->'.cr(); 
			$sx .= '   		</div><!-- /row -->'.cr();
			$sx .= '		<div class="md-col-5 col-md-offset-1">'.cr();
			$sx .= '   		</div><!-- /row -->'.cr();									
			$sx .= '	</div> <!--- row ---->'.cr();
			/************************ ROW ****************************************************/
			$sx .= '	<div class="row">'.cr();
			$sx .= '		<div class="md-col-5 col-md-offset-1">'.cr();
			$sx .= 			msg('new_author_inf');
			$sx .= '		<br>';
			$sx .= '		<button type="button" id="team_cancel" class="btn btn-default" data-dismiss="modal">'.msg('cancel').'</button>'.cr();			
			$sx .= '   		</div><!-- /row -->'.cr();			
			$sx .= '	</div> <!--- row ---->'.cr();			
			/************************ ROW ****************************************************/
			$sx .= '</div> <!-- team_form -->';
			
			$sx .= '<script language="JavaScript" type="text/javascript" src="'.base_url('js/action/team.js').'"></script>
			';
			return($sx);
		}
	function insert_new_investigator($proto,$email)
		{
			$this->load->model("users");
			$user_data = $this->users->le_email($email);

			if (count($user_data) > 0)
				{
				$proto = strzero($proto,7);	
				$user = $user_data['us_codigo'];
				$data = date("Ymd");
				
				$sql = "select * from cep_team
						inner join usuario on us_codigo = ct_author
						where ct_protocol = '$proto' and ct_author = '$user' ";
					$rlt = $this->db->query($sql);
					$rlt = $rlt->result_array();
			
				$sql = "insert into cep_team 
						(ct_protocol,ct_author,ct_type,ct_data,ct_ativo) 
						values
						('$proto','$user','O','$data','1')";
					$rlt = $this->db->query($sql);
				} else {
					$erro = 'User not found';
				}
			$sx = $this->show_team($proto,1);				
			return($sx);
		}
	}
?>
