<form method="post">
	<div class="row">
		<div class="col-md-12 text-center"><img src="<?php echo base_url('img/proethos_logo_2.png'); ?>" class=""></div>
		<div class="col-md-12 text-center">
			<h2><b><?php echo msg('login_cab'); ?></b></h2>
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
		<div class="col-md-4 text-right"><?php echo msg('password'); ?></div>
		<div class="col-md-4"><input type="password" name="password" class="form-control"></div>
		<div class="col-md-4">&nbsp;</div>
		<div class="col-md-12">&nbsp;</div>
	</div>
	<div class="row">				
		<div class="col-md-6 col-md-offset-4"><input type="submit" value="<?php echo msg('submit'); ?>" class="btn btn-primary"></div>
		<div class="col-md-12">&nbsp;</div>
	</div>
	<div class="row">	
		<div class="col-md-4 col-md-offset-4"><A href="<?php echo base_url('index.php/main/password'); ?>" class="links"><?=msg('forgot_password'); ?></A></div>
		<div class="col-md-4">&nbsp;</div>
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
