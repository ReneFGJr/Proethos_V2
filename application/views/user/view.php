<?php
if (strlen($us_email_alt) > 0) { $common = '; ';
} else { $common = '';
}
?>
<div class="rows">
	<div class="col-md-1 text-right"><?php echo msg('name'); ?></div>
	<div class="col-md-11 lt4"><b><?php echo $us_nome; ?></b></div>
</div>

<div class="rows">
	<div class="col-md-1 text-right"><?php echo msg('email'); ?></div>
	<div class="col-md-11 lt2"><b><?php echo $us_email; ?><?php echo $common; ?> <?php echo $us_email_alt; ?></b></div>
</div>

<div class="rows">
	<div class="col-md-1 text-right"><?php echo msg('instituition'); ?></div>
	<div class="col-md-11 lt2"><b><?php echo $us_instituition; ?></b></div>
</div>
<div class="rows">
	<div class="col-md-12">	
	<?php
	if (isset($edit) and ($edit == 1)) {
		echo '	
		<a href="' . base_url('index.php/main/myaccount_edit') . '" class="btn btn-primary" title="' . msg('edit') . '">		
		' . msg('edit') . '
		</a>
		
		';
	}
	?>
</div>
</div>