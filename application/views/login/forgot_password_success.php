<?php
if (!isset($erro)) { $erro = '';
}
?>
<form method="post">
	<div class="row">
		<div class="col-md-12 text-center"><img src="<?php echo base_url('img/proethos_logo_2.png'); ?>" class=""></div>
		<div class="col-md-12 text-center">
			<h2><b><?php echo msg('forgot_password'); ?></b></h2>
		</div>
		
		<div class="col-md-12">&nbsp;</div>
	</div>
				
	<div class="row">
		<div class="col-md-4 col-md-offset-4"><div class="alert alert-success" role="alert"><?php echo $content; ?></div></div>
	</div>
	
	<div class="row">				
		<div class="col-md-6 col-md-offset-4">
			<a href="<?php echo base_url('index.php');?>"><button class="btn btn-default"><?php echo msg('return'); ?></buttom></a>
		</div>
		<div class="col-md-12">&nbsp;</div>
	</div>
	
</form>

