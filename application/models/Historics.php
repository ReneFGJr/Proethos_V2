<?php 
class historics extends CI_model
	{
	function show_historic($id)
		{
			$toti = 0;
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
	function show_historic_list($id)
		{
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
