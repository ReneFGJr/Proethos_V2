<section id="survey">

<input type="hidden" id="linkH" name="linkH" value="<?php echo base_url('index.php/ajax/action/00H/'); ?>">
<input type="hidden" id="protoH" name="protoH" value="<?php echo $id; ?>">
<input type="hidden" id="checkH" name="checkH" value="<?php echo checkpost_link($id); ?>">
<input type="hidden" id="linkH"  name="linkH"  value="<?php base_url('index.php/ajax/action/00H'); ?>">

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo msg('action_accept_015'); ?></h4>
      </div>
      <div class="modal-body">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h4><?php echo msg('accept_manu_survey'); ?></h4>
				</div>
			</div>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-info" id="survey_yes" data-dismiss="modal"><?php echo msg('yes')?></button>
		<button type="button" class="btn btn-danger" id="survey_no" data-dismiss="modal"><?php echo msg('no')?></button>        
      </div>
    </div>
   </div>
</div> <!-- modal -->
</div>
</section>