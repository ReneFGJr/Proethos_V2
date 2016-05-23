<div class="alert alert-success" role="alert"><?php echo msg('success');?></div>

<?php
if (isset($return))
	{
	echo '
	<div class="rows">
		<div class=" text-center">
			<a href="'.$return.'">
			<button type="button" class="btn btn-default">'.msg('return').'</button>
			</a>
		</div>
	</div>
	';
	}
?>