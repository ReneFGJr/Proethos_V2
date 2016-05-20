<?php
class messages extends CI_Model
	{
	function show_messages($id)
		{
			$toti = 0;
			$btn = '';
			if ($toti > 0)
				{
					$btn = 'btn-primary';
				}
			$sx = '
				<button class="btn '.$btn.'" type="button" id="messages">
				  '.msg('messages').' <span class="badge">'.$toti.'</span>
				</button>';
			return($sx);			
			$sx = '
				<button class="btn btn-primary" type="button" id="messages">
				  Messages <span class="badge">4</span>
				</button>			
			';
			return($sx);
		}
		
	function show_messages_list($id)
		{
			$sx = '			
				<div class="panel panel-default" style="display: none; margin-top: 20px;" id="messages_list">
				  <div class="panel-heading">'.msg('messages_with_investigator').'</div>
				  <div class="panel-body">
				    <table width="100%" class="table lt1">
				    <tr class="lt0">
				    	<th width="5%">'.msg('hd_data').'</th>
				    	<th width="5%">'.msg('hd_hora').'</th>
				    	<th width="90%">'.msg('hd_comment').'</th>
				    </tr>
				    </table>
				  </div>
				</div>			
				
			<script>
				$("#messages").click(function() {
					$("#messages_list").slideToggle( "slow", function() { });
				});
			</script>
			';			
			return($sx);
		}		
				
	function create()
		{
			$id = array('english','spanish','portuguese','french');
			$ir = array('en','es','pt_BR','fr');
			$ir = array('pt_BR');
			for ($r=0;$r < count($ir);$r++)
				{
					$tp = $ir[$r];
					$sql = "select * from _messages where msg_language = '$tp' ";
					$rlt = $this->db->query($sql);
					$rlt = $rlt->result_array();
					
					$sx = '<?php'.cr();
					for ($y=0; $y < count($rlt);$y++)
						{
							$line = $rlt[$y];
							$m1 = utf8_decode($line['msg_content']);
							$sx .= '$lang[\''.$line['msg_field'].'\'] = \''.$m1.'\';'.cr();
						}
					$sx .= '?>'.cr();
				}
			$filename = 'language/'.$id[$r].'/proethos_lang.php';
			echo '<pre>'.$sx.'</pre>';
			echo $filename;
			$handle = fopen($filename,'w+');
			fwrite($handle,$sx);
			fclose($handle);
		}	
	}
?>
