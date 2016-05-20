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
    <?php echo $content;?>
</div>