<?php
class messages extends CI_Model
	{
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
