<?php
if (isset($title_resume))
	{
		$title = '<h3>'.$title_resume.'</h3>';
	} else {
		$title = '';
	}
?>
<div class="panel panel-defaults text">
  <!-- Default panel contents -->
  <?php echo $title;?>

  <!-- Table -->
  <table class="table">
    <tr style="font-size: 12px;">
    	<th width="5%"><?php echo msg("caae");?></th>
    	<th width="70%"><?php echo msg("protocol_title");?></th>
    	<th width="10%"><?php echo msg("last_update");?></th>
    	<th width="20%"><?php echo msg("status");?></th>
    </tr>
    <?php echo $content;?>
  </table>
</div>