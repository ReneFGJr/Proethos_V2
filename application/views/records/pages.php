<div class="container">
	<h1><?php echo $caption;?></h1>
	<div class="row hidden-xs">
	<?php
	for ($r=0;$r < $pages; $r++)
		{
			$link = base_url($page.'/'.($r+1));
			if (($r+1) == $active) { $action = 'alert-info'; } else { $action = ''; }
			echo '<div class="col-md-1 alert '.$action.' text-center" role="alert" style="margin-right: 5px;">';
			echo '<font class="lt0">'.msg('submit_page').'</font><br>'.cr();
			echo '<font class="lt6">';
			echo '<a href="'.$link.'">'.($r+1).'</a>';
			echo '</font>'.cr();			
			echo '</div>';
		}
	?>
	</div>
	<div class="row visible-xs">
	<?php
			echo '<nav>'.cr();
			echo '<ul class="pagination">'.cr();
			for ($r=0;$r < $pages; $r++)
				{
					$link = base_url($page.'/'.($r+1));
					if (($r+1) == $active) { $action = 'active'; } else { $action = ''; }	
								
					echo '<li class="'.$action.'">';
					echo '<a href="'.$link.'">';
					echo ($r+1);
					echo '</a></li>';
				}
			echo '</ul>'.cr();
			echo '</nav>'.cr();			
			echo '</div>';
	?>
	</div>
</div>