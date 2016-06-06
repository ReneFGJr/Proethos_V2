<?php
if (!isset($fluid)) { $fluid = 0; }
if (!isset($bg)) { $bg = ''; }

/* Container */
if ($fluid==1)
	{
		echo '<div class="container-fluid '.$bg.'">'.cr();
	} else {
		echo '<div class="container '.$bg.'">'.cr();
	}

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

/* End Content */
echo '</div> <!--container-->'.cr().cr();
?>