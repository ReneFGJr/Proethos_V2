<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="myBudget" tabindex="-1" role="dialog" aria-labelledby="myBudgetLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myBudgetLabel">Modal title</h4>
      </div>
      <div class="modal-body" id="myBudgetContent">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo msg('cancel');?></button>
        <span class="btn btn-primary" data-dismiss="modal" id="myBudgetConfirm" ><?php echo msg('confirm');?></span>
        <input type="hidden" value="" id="myBudgetProto">
        <input type="hidden" value="" id="myBudgetId">
        <input type="hidden" value="" id="myBudgetLink">
        <input type="hidden" value="" id="myBudgetCheck">
      </div>
    </div>
  </div>
</div>