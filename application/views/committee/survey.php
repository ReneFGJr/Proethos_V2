<section id="survey">
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<h3><?php echo msg('action_accept_015'); ?></h3>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<h4><?php echo msg('accept_manu_survey'); ?></h4>
	</div>
</div>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div>
			<?php echo msg("result_survey"); ?>
		</div>
		<div>
			<button class="btn btn-info" id="survey_yes"><?php echo msg('yes')?></button>
			<button class="btn btn-danger" id="survey_no"><?php echo msg('no')?></button>
		</div>
	</div>
</div>
<input type="hidden" id="linkH" name="linkH" value="<?php echo base_url('index.php/ajax/action/00H/');?>">
<input type="hidden" id="protoH" name="protoH" value="<?php echo $id;?>">
<input type="hidden" id="checkH" name="checkH" value="<?php echo checkpost_link($id);?>">
<input type="hidden" id="linkH"  name="linkH"  value="<?php base_url('index.php/ajax/action/00H');?>">

</section>