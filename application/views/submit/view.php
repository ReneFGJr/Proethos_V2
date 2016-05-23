<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-6">
				<?php echo msg("caae"); ?>
				<br>
				<span class="lt4">
					<b><?php echo $cep_protocol; ?></b>
				</span>
			</div>
			<div class="col-md-6 text-right"><?php echo $cep_tipo; ?></div>
</div>

<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-8">
				<?php echo msg("project_title"); ?>
				<br>
				<span class="lt4">
					<b><?php echo $cep_titulo; ?></b>
				</span>
			</div>
			<div class="col-md-4 text-right">
				<?php echo msg("status"); ?>
				<br>
				<span class="lt4">
				<?php echo msg('cep_status_' . $cep_status); ?>
				</span>
			</div>
</div>

<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-10">
				<?php echo msg("project_investigador"); ?>
				<br>
				<span class="lt3">
					<?php echo $authors; ?>
				</span>
			</div>
			<div class="col-md-2 text-right"><?php echo msg("project_type"); ?>
				<br>
				<span class="lt3">
					<?php echo msg('amendment__' . $cep_tipo); ?>
				</span>
			</div>
</div>

<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-2">
				<?php echo msg("date_accept"); ?>
				<br>
				<span class="lt3">
					<?php echo stodbr($cep_data); ?>
				</span>
			</div>
			<div class="col-md-2">
				<?php echo msg("date_update"); ?>
				<br>
				<span class="lt3">
					<?php echo stodbr($cep_atualizado); ?>
				</span>
			</div>												
</div>



