<?php
if (!isset($content_info)) { $content_info = ''; }
if (isset($type))
	{
		
	} else {
		$type = 'alert';
	}
?>
<br><br>
<div class="row">
	<div class="col-md-4 alert alert-<?php echo $type;?>" role="alert"><?php echo $content;?></div>
	<div class="col-md-8 alert"><?php echo $content_info;?></div>	
</div>