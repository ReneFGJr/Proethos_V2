<?php
/* Title */
if (isset($title)) {
	echo '<h1 class="font">' . $title;
	if (isset($submenu)) {
		echo '<br>'.$submenu.'</br>';
	}
	echo '</h1>'.cr();
}

/* Content */
echo $content.cr();
?>