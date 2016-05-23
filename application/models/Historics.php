<?php 
class historics extends CI_model
	{
	var $tabela = 'cep_protocolos_historic';
	function show_historic($id)
		{
			$toti = 0;
			$proto = strzero($id,7);
			$sql = "SELECT count(*) as total from ".$this->tabela." 
						WHERE his_protocol = '$proto' 
						ORDER by his_data desc, his_time desc ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			if (count($rlt) > 0)
				{
					$toti = $rlt[0]['total'];
				}
			$btn = '';
			if ($toti > 0)
				{
					$btn = 'btn-primary';
				}
			$sx = '
				<button class="btn '.$btn.'" type="button" id="historic">
				  '.msg('historic').' <span class="badge">'.$toti.'</span>
				</button>';
			return($sx);
		}
	function cod_type($cod)
		{
			$sx = '';
			switch($cod)
				{
				case '001':
					$sx = msg('action_001_return_sub');
					break;
				case '002':
					$sx = msg('action_002_return_sub');
					break;										
				case '003':
					$sx = msg('action_003_return_sub');
					break;
				case '009':
					$sx = msg('action_009_return_sub');
					break;
				case '999':
					$sx = msg('action_999');
					break;
				}
			return($sx);
		}
	function insert_historic($data)
		{
			$proto = strzero($data['proto'],7);
			$comment = $data['comment'];
			$date = date("Ymd");
			$time = date("H:i:s");
			$log = $_SESSION['id'];
			$caae = $data['caae'];
			$cod = $data['cod'];
			$sql = "insert into ".$this->tabela."
					(	
					his_protocol, his_codigo, his_data,
					his_time, his_comment, his_log,
					his_caae
					) values (
					'$proto','$cod','$date',
					'$time','$comment','$log',
					'$caae') ";
			$this->db->query($sql);
			return(1);
		}
	function show_historic_list($id)
		{
			$proto = strzero($id,7);
			$sql = "SELECT * from ".$this->tabela." 
						WHERE his_protocol = '$proto' 
						ORDER by his_data desc, his_time desc ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			$sx = '';
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$msg = $this->cod_type($line['his_codigo']);
					if (strlen($msg) > 0)
						{
							$msg = '<b>'.$msg.'</b>';
							if (strlen($line['his_comment']) > 0) { $msg .= '<br>'; }
						}
					$sx .= '<tr class="lt2">';
					$sx .= '<td align="center">'.stodbr($line['his_data']).'</td>';
					$sx .= '<td align="center">'.$line['his_time'].'</td>';
					$sx .= '<td align="left">'.$msg.$line['his_comment'].'</td>';
					$sx .= '</tr>';
				}				
			
			$sx = '			
				<div class="panel panel-default" style="display: none; margin-top: 20px;" id="historic_list">
				  <div class="panel-heading">'.msg('historic').'</div>
				  <div class="panel-body">
				    <table width="100%" class="table lt1">
				    <tr class="lt0">
				    	<th width="5%">'.msg('hd_data').'</th>
				    	<th width="5%">'.msg('hd_hora').'</th>
				    	<th width="90%">'.msg('hd_comment').'</th>
				    </tr>
				    '.$sx.'
				    </table>
				  </div>
				</div>			
				
			<script>
				$("#historic").click(function() {
					$("#historic_list").slideToggle( "slow", function() { });
				});
			</script>
			';			
			return($sx);
		}	
	}
?>
