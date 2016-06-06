	<div class="container">
		<div class="row borderb1">
			<div class="col-md-4">
				<?php echo msg("caae"); ?>
				<br>
				<span class="lt4">
					<b><?php echo $cep_caae; ?></b>&nbsp;
				</span>
			</div>
			<div class="col-md-4 text-right">
				<?php echo $cep_tipo; ?>
			</div>
			<div class="col-md-4 font text-right">
				<?php echo msg("status"); ?>
				<br>
				<span class="lt3">
				<?php echo msg('cep_status_' . $cep_status); ?>
				</span>
			</div>			
		</div>

		<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-12">
				<?php echo msg("project_title"); ?>
				<br>
				<span class="lt4 font">
					<?php echo $cep_titulo; ?>
				</span>
			</div>

		</div>
		
		<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-10">
				<?php echo msg("project_investigador"); ?>
				<br>
				<span class="lt3 font">
					<?php echo $cep_authors; ?>
				</span>
			</div>
			<div class="col-md-2 text-right"><?php echo $cep_tipo; ?></div>
		</div>
		
		
		<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-4">
				<?php echo msg("institution"); ?>
				<br>
				<span class="lt3 font">
					<?php echo $cep_authors; ?>
				</span>
			</div>
			<div class="col-md-4">
				<?php echo msg("country"); ?>
				<br>
				<span class="lt3 font">
					<?php echo $cep_authors; ?>
				</span>
			</div>
			<div class="col-md-4">
				<?php echo msg("result"); ?>
				<br>
				<span class="lt3 font">
					<?php echo $cep_authors; ?>
				</span>
			</div>			
		</div>
		
		
		<div class="row borderb1" style="font-size: 11px;">
			<div class="col-md-2">
				<?php echo msg("date_accept"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_atualizado); ?>
				</span>
			</div>
			<div class="col-md-2">
				<?php echo msg("date_update"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_atualizado); ?>
				</span>
			</div>	
			<div class="col-md-2">
				<?php echo msg("meet_data"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_reuniao); ?>
				</span>
			</div>	
			<div class="col-md-2">
				<?php echo msg("dictamen_date"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_aproved); ?>
				</span>
			</div>	
			<div class="col-md-2">
				<?php echo msg("aware_date"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_dt_ciencia); ?>
				</span>
			</div>	

			<div class="col-md-2">
				<?php echo msg("date_amendment"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_atualizado); ?>
				</span>
			</div>	
			
			<!--- para aprovado -->
			<?php if ($cep_aproved > 20000101) { ?>
			
			<div class="col-md-2">
				<?php echo msg("date_reclutamiento"); ?>
				<br>
				<span class="lt3 font">
					<?php echo stodbr($cep_atualizado); ?>
				</span>
			</div>			
			<div class="col-md-8">
				<?php echo msg("monitoring"); ?>
				<br>
				<span class="lt3 font">
					<?php echo $cep_authors; ?>
				</span>
			</div>
			<?php } ?>																
		</div>
	</div>

