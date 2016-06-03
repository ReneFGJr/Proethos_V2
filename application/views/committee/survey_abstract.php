<div class="row">
	<div class="col-md-12">
		<h2><?php echo msg('accept_manu_survey'); ?></h2>
	</div>
</div>
<div class="row">
	<div class="col-md-1 text-right">
		<?php echo msg('result_survey'); ?>
	</div>
	<div class="col-md-11">
		<button class="btn btn" type="button" id="survey_yes">
			<?php echo msg('yes'); ?> <span class="badge"><?php echo $total_yes; ?></span>
		</button>
		<button class="btn btn" type="button" id="survey_no">
			<?php echo msg('no'); ?> <span class="badge"><?php echo $total_no; ?></span>
		</button>		
	</div>
</div>
