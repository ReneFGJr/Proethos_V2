<div class="container bg2">
<ol class="breadcrumb">
	<?php 
	foreach ($menus as $item => $link) {
		echo '<li><a href="'.base_url('index.php/'.$link).'">'.$item.'</a></li>';
	}
	?>
</ol>
</div>