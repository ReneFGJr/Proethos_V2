<?php
class comments extends CI_model
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
				<button class="btn '.$btn.'" type="button" id="comments">
				  '.msg('comments').' <span class="badge">'.$toti.'</span>
				</button>';
			return($sx);
		}
	function show_messages_list($id)
		{
			$sx = '			
				<div class="panel panel-default" style="display: none; margin-top: 20px;" id="comments_list">
				  <div class="panel-heading">'.msg('comments').'</div>
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
				$("#comments").click(function() {
					$("#comments_list").slideToggle( "slow", function() { });
				});
			</script>
			';			
			return($sx);
		}	
	}
?>
