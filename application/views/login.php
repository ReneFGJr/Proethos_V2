<div class="container" style="background-color: #fff0f0;">
	<div class="row">
		<div class="col-md-12"><img src="<?php echo base_url('img/proethos_logo_2.png'); ?>" class=""></div>
	</div>
	<form method="post">
		<div class="row text-center">
			<?php echo msg('login_cab'); ?>
		</div>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-1"><?php echo msg('email'); ?></div>
			<div class="col-md-3"><input type="text" name="email" class="form-control"></div>
			<div class="col-md-3"></div>
		</div>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-1"><?php echo msg('password'); ?></div>
			<div class="col-md-3"><input type="password" name="password" class="form-control"></div>
			<div class="col-md-3"></div>
		</div>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-1"></div>
			<div class="col-md-6"><input type="submit" value="<?php echo msg('submit'); ?>" class="btn btn-primary"></div>
		</div>
		<div class="row">
			<div class="col-md-6 text-right"><A href="javascript:newxy2('login_password_send.php',500,200)" class="links"><?=msg('forgot_password'); ?></A></div>
			<div class="col-md-6"><a href="#"><?=msg('user_new'); ?></a></div>			
		</div>
	</form>

<?php if (strlen($erro) > 0) { ?>
<div class="row">
	<div class="col-md-6"></div>
	<div class="col-md-4"><div class="alert alert-danger" role="alert"><?php echo $erro; ?></div></div>
	<div class="col-md-6"></div>
</div>
<?php } ?>
</div>
