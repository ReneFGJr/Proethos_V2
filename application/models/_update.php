<?php
class _update extends CI_model
	{
		function update()
			{
				$sql = "
				ALTER TABLE _committee ADD cm_niec integer;
				ALTER TABLE cep_protocolos ADD cep_acronym CHAR(50) NOT NULL AFTER cep_titulo_public;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_001` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_002` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_003` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_004` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_005` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_006` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_007` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_008` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_009` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_010` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_011` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_012` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_013` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_014` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_015` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_016` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_017` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_018` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_019` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_020` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_021` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_022` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_023` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_024` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_025` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_026` TEXT NOT NULL DEFAULT '' ;
				ALTER TABLE `cep_protocolos` ADD `cep_fld_027` TEXT NOT NULL DEFAULT '' ;
				";
			}
	}
