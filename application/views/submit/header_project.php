<?php
if (!isset($page_enable)) { $page_enable = 0;
}
if (!isset($max_menu)) {
	$max_menu = 6;
}

if (!isset($page)) { $page = 1;
}
if ($page < 1) { $pag = 1;
}
if ($page > $max_menu) { $page = $max_menu;
}
?>
<div class="btn-group visible-md visible-lg">
	<?php
	for ($r = 1; $r <= $max_menu; $r++) {
		$active = '';
		if ($page == $r) { $active = 'btn-primary';
		}
		$xlink = base_url('index.php/' . $link . '/' . $id . '/' . $chk . '/' . $r);
		if (($page_enable == 1) and ($r > 1)) { $xlink = '#';
		}
		echo '<a href="' . $xlink . '">
					<button type="button" class="btn ' . $active . '">' . $r . '
					&nbsp;' . msg('top_submit_menu_' . $r) . '</button>
					</a>';
	}
	?>
</div>

<nav class="visible-xs visible-sm">
	<ul class="pagination">
		<?php
		for ($r = 1; $r <= $max_menu; $r++) {
			$xlink = base_url('index.php/' . $link . '/' . $id . '/' . $chk . '/' . $r);
			if (($page_enable == 1) and ($r > 1)) { $xlink = '#';
			}
			echo '<li><a href="' . $xlink . '" title="' . msg('top_submit_menu_' . $r) . '">' . $r . '</a></li>';
		}
		?>
	</ul>
</nav>