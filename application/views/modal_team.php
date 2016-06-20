<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body" id="myModalContent">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo msg('cancel');?></button>
        <button type="button" id="myModalConfirm" class="btn btn-primary"  data-dismiss="modal"><?php echo msg('confirm');?></button>
        <input type="hidden" value="" id="myModalProto">
        <input type="hidden" value="" id="myModalId">
        <input type="hidden" value="" id="myModalLink">
        <input type="hidden" value="" id="myModalCheck">
      </div>
    </div>
  </div>
</div>