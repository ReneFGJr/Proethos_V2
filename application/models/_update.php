<?php
class _update extends CI_model
	{
		function update()
			{
				$sql = "ALTER TABLE cep_protocolos ADD cep_acronym CHAR(50) NOT NULL AFTER cep_titulo_public;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_001` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_002` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_003` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_004` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_005` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_006` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_007` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_008` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_009` TEXT NOT NULL DEFAULT '' ;";
				$sql = "ALTER TABLE `cep_protocolos` ADD `cep_fld_010` TEXT NOT NULL DEFAULT '' ;";
			}
	}
