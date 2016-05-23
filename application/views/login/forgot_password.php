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
		<div class="col-md-4 col-md-offset-4 alert alert-info" role="info">
		  <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
		  <?php echo msg('email_info'); ?>
		</div>		
		<div class="col-md-12">&nbsp;</div>
	</div>
		
	<div class="row">
		<div class="col-md-4 text-right"><?php echo msg('email'); ?></div>		
		<div class="col-md-4"><input type="text" name="email" class="form-control"></div>
		<div class="col-md-4">&nbsp;</div>
		<div class="col-md-12">&nbsp;</div>
	</div>

	<div class="row">				
		<div class="col-md-6 col-md-offset-4">
			<input type="submit" value="<?php echo msg('submit'); ?>" class="btn btn-primary">			
			<a href="<?php echo base_url('index.php');?>"><button class="btn btn-default"><?php echo msg('cancel'); ?></buttom></a>
		</div>
		<div class="col-md-12">&nbsp;</div>
	</div>
			
	<?php if (strlen($erro) > 0) { ?>
		<div class="row">
			<div class="col-md-4 col-md-offset-4"><div class="alert alert-danger" role="alert"><?php echo $erro; ?></div></div>
		</div>
	<?php } ?>			
	<div class="row">		
		<div class="col-md-4 col-md-offset-4"><a href="#"><?=msg('user_new'); ?></a></div>
	</div>			
</form>
