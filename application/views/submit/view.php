<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-6">
				<?php echo msg("caae"); ?>
				<br>
				<span class="lt4">
					<b><?php echo $doc_protocolo; ?></b>
				</span>
			</div>
			<div class="col-md-6 text-right"><?php echo $doc_tipo; ?></div>
</div>

<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-10">
				<?php echo msg("project_title"); ?>
				<br>
				<span class="lt4">
					<b><?php echo $doc_1_titulo; ?></b>
				</span>
			</div>
			<div class="col-md-2 text-right">
				<?php echo msg("status"); ?>
				<br>
				<span class="lt4">
				<?php echo msg('cep_status_' . $doc_status); ?>
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
					<?php echo msg('amendment__' . $doc_tipo); ?>
				</span>
			</div>
</div>

<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-2">
				<?php echo msg("date_accept"); ?>
				<br>
				<span class="lt3">
					<?php echo stodbr($doc_data); ?>
				</span>
			</div>
			<div class="col-md-2">
				<?php echo msg("date_update"); ?>
				<br>
				<span class="lt3">
					<?php echo stodbr($doc_dt_atualizado); ?>
				</span>
			</div>												
</div>



