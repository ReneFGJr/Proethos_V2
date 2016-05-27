<?php
// This file is part of the ProEthos Software.
//
// Copyright 2013, PAHO. All rights reserved. You can redistribute it and/or modify
// ProEthos under the terms of the ProEthos License as published by PAHO, which
// restricts commercial use of the Software.
//
// ProEthos is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
// PARTICULAR PURPOSE. See the ProEthos License for more details.
//
// You should have received a copy of the ProEthos License along with the ProEthos
// Software. If not, see
// https://raw.githubusercontent.com/bireme/proethos/master/LICENSE.txt

/**
 * @author Rene Faustino Gabriel Junior <renefgj@gmail.com> (Analista-Desenvolvedor)
 * @copyright © Pan American Health Organization, 2013. All rights reserved.
 * @access public
 * @version v0.16.19
 * @package Class
 * @subpackage Committee
 */

class committees extends CI_model {
	var $tabela = '_committee';
	var $tabela_perfil = 'usuario_perfil';
	var $tabela_perfil_ativo = 'usuario_perfis_ativo';
	var $tabela_usuario = 'usuario';
	
	function cp() {
		global $dd;
		$cp = array();
		if (strlen($dd[2]) < 4) { $msgcode = '<font color="red"></font>';
		}
		$tp = 'MAIL:' . msg('method_1');
		$tp .= '&AUTH:' . msg('method_2');
		$tp .= '&AUTS:' . msg('method_3');

		array_push($cp, array('$H8', 'id_cm', '', False, True));
		array_push($cp, array('${', '', msg('about_committee'), False, True));

		array_push($cp, array('$S8', 'cm_committe', msg('committee_id'), True, True));

		array_push($cp, array('$S100', 'cm_name', msg('committee_name'), True, True));
		array_push($cp, array('$S100', 'cm_site', msg('committe_site'), True, True));

		array_push($cp, array('$M', '', msg('committee_id_info'), False, True));

		array_push($cp, array('$A', '', msg('address_committee'), False, True));
		array_push($cp, array('$T60:7', 'cm_address', msg('address'), False, True));
		array_push($cp, array('$S40', 'cm_city', msg('city'), True, True));
		array_push($cp, array('$Q pais_nome:pais_nome:select * from ajax_pais order by pais_nome', 'cm_country', msg('country'), True, True));

		array_push($cp, array('$A', '', msg('address_geo'), False, True));
		array_push($cp, array('$M', '', msg('address_geo_info'), false, True));
		array_push($cp, array('$S10', 'cm_lat', msg('coord_x'), True, True));
		array_push($cp, array('$S10', 'cm_long', msg('coord_y'), True, True));
		array_push($cp, array('$}', '', '', False, True));

		array_push($cp, array('${', '', msg('contact_committee'), False, True));
		array_push($cp, array('$S40', 'cm_phone', msg('phone'), True, True));
		array_push($cp, array('$S100', 'cm_admin_name', msg('admin_name'), True, True));
		array_push($cp, array('$S100', 'cm_admin_email', msg("admin_email"), True, True));
		array_push($cp, array('$S100', 'cm_email_replay', msg("admin_email_replay"), False, True));
		array_push($cp, array('$O ' . $tp, 'cm_admin_email_tipo', msg("admin_email_tipo"), True, True));
		array_push($cp, array('$S100', 'cm_admin_email_smtp', msg("admin_email_smtp"), True, True));
		array_push($cp, array('$P20', 'cm_admin_email_pass', msg("admin_email_password"), False, True));
		array_push($cp, array('$}', '', '', False, True));

		array_push($cp, array('${', '', msg('contact_param'), False, True));

		$ol = 'es:Español&en_US:English&pt_BR:Portugues&fr:Français';
		//$ol = utf8_encode($ol);
		array_push($cp, array('$O ' . $ol, 'cm_language', msg('language_preference'), True, True));
		array_push($cp, array('$O CEP:CEP&CEUA:CEUA', 'cm_type', msg('committee_type'), True, True));
		array_push($cp, array('$}', '', '', False, True));

		array_push($cp, array('${', '', msg('harvesting'), False, True));
		array_push($cp, array('$O 1:' . msg('yes') . '&0:' . msg('no'), 'cm_admin_key', msg('harvesting'), True, True));
		array_push($cp, array('$S40', 'cm_admin_key_harveting', msg('harvesting_key'), False, True));
		array_push($cp, array('$M', '', msg('harvesting_info'), false, True));
		array_push($cp, array('$}', '', '', False, True));
		///array_push($cp, array('$O utf-8:utf-8', 'cm_charcode', 'Encoding Char Type', True, True));
		array_push($cp, array('$HV', 'cm_charcode', 'utf-8', True, True));

		array_push($cp, array('$B8', '', msg('update'), False, True));

		return ($cp);
	}

	function member_committee_list() {
		$field_sort = 'usp_descricao';
		$sx = '';
		$sh = '<TR class="lt0">
						<Th align="left">' . msg('perfil_user_name') . '</th>
						<TH>' . msg('assigned data') . '</TH>
			';

		$sql = "select * from " . $this -> tabela_perfil_ativo . "
					inner join " . $this -> tabela_perfil . " on up_perfil = usp_codigo
					inner join " . $this -> tabela_usuario . " on up_usuario = us_codigo
					where up_ativo = 1 
					order by $field_sort ";
		$rlt = db_query($sql);

		$sx .= '<table width="100%" class="tabela">';

		$xhead = '';
		$tot1 = 0;
		$tot2 = 0;
		while ($line = db_read($rlt)) {
			$head = trim($line[$field_sort]);
			$perfil = trim($line['usp_descricao']);
			$name = trim($line['us_nome']);

			/* */
			if ($head != $xhead) {
				$sx .= '<TR><TD colspan=5 class="lt3">';
				if ($tot2 > 0) { $sx .= '<HR width="50%">';
				}
				$sx .= $head;
				$sx .= '</td></tr>';
				$sx .= $sh;
				$xhead = $head;
				$tot2 = 0;
			}

			$tot1++;
			$tot2++;

			$sx .= '<TR>';

			$sx .= '<TD>';
			$sx .= $name;
			$sx .= '</td>';

			$sx .= '<TD width="80" align="center">';
			$sx .= stodbr($line['up_data']);
			$sx .= '</td>';

			$sx .= '</tr>';
		}
		$sx .= '</table>';
		return ($sx);
	}

}
?>
