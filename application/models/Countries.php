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
 * @subpackage Countries
 */
  
class countries extends CI_model
	{
	function remove($proto,$id)
		{
			$sql = "update cep_submit_country set ctr_ativo = 0 where id_ctr = ".round($id);
			$rlt = $this->db->query($sql);
			$sx = $this->show($proto,1);				
			return($sx);			
		}
	function insert($proto,$country,$size, $comment)
		{
			$sql = "insert into cep_submit_country
					(
					ctr_protocol, ctr_country, ctr_ativo, ctr_target, ctr_description
					) values (
					'$proto','$country','1','$size','$comment'
					)";
			$rlt = $this->db->query($sql);
			$sx = $this->show($proto,1);				
			return($sx);			
		}
	function show($id=0,$edit=1,$erro='')
		{
			$proto = strzero($id,7);	
			$sql = "select * from cep_submit_country
						INNER JOIN ajax_pais ON pais_codigo = ctr_country
					where ctr_protocol = '$proto' and pais_ativo = 1 and ctr_ativo = 1
					order by pais_nome ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			
			$sx = '<table class="table lt2" width="100%">';
			//$sx .= '<tr><th colspan="6" class="lt3">'.msg('team').'</th></tr>'.cr();
			$sx .= '<tr>
						<th width="2%">#</th>
						<th width="40">'.msg('ctr_target').'</th>
						<th width="46%">'.msg('pais_nome').'</th>
						<th width="50%">'.msg('country_description').'</th>
						<th>-</th>						
					</tr>';
			$tot = 0;
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$tot++;
					$sx .= '<tr>';
					$sx .= '<td>'.$tot.'</td>';
					
					$sx .= '<td align="center">'.$line['ctr_target'].'</td>';					
					$sx .= '<td>'.$line['pais_nome'].'</td>';
					$sx .= '<td>'.$line['ctr_description'].'</td>';
					$title = msg('remove_country');
					$content = $line['pais_nome'];
					$link = base_url('index.php/ajax/action/country_del/');
					$idin = $line['id_ctr'];
					$check = checkpost_link($idin);
					$proto = strzero($id,7);
						
					$link = ' onclick="remove_country(\''.$proto.'\',\''.$title.'\',\''.$content.'\',\''.$idin.'\',\''.$link.'\',\''.$check.'\');" ';
					$sx .= '<td width="10" align="right">';
					//$sx .= '<button type="button" class="btn" data-toggle="modal" data-target="#myModal">';
					$sx .= '<span class="glyphicon glyphicon-trash" aria-hidden="true" style="cursor: pointer;" '.$link.'></span>';
					//$sx .= '</button>';
					// $('#myModal').modal(options)
					$sx .= '</td>';					
					$sx .= '</tr>';
				}
			$sx .= '</table>';							
			return($sx);
		}
	function novo_form($proto)
		{
			/* Coutries Row */
			
			$sql = "select * from ajax_pais 
						WHERE pais_ativo = 1
						AND pais_nome <> ''
					ORDER BY pais_nome ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			$op = '<select id="country_nr" class="form-control" name="dd50">'.cr();
			$op .= '<option value=""></option>'.cr();
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$op .= '<option value="'.$line['pais_codigo'].'">'.msg($line['pais_nome']).'</option>'.cr();
				}
			$op .= '</select>'.cr();
						
			$sx = '';
			$sx .= '<div class="row">'.cr();
			
			$sx .= '<div class="col-md-1 text-right">';
			$sx .= 			msg('size').': ';
			$sx .= '</div>'.cr();
			/* Input size */
			$sx .= '<div class="col-md-1">';
			$sx .= '     <input value="" type="string" class="form-control text-right" id="country_source">'.cr();
			$sx .= '</div>'.cr();
			
			$sx .= '<div class="col-md-1 text-right">';
			$sx .= 			msg('country').': ';
			$sx .= '</div>'.cr();

			/* Coutries Row */
			$sx .= '<div class="col-md-3">'.cr();
			$sx .= $op;
			$sx .= '</div>'.cr();
			
			/* Description */
			$sx .= '<div class="col-md-1 text-right">'.cr();
			$sx .= msg('description').':'.cr();
			$sx .= '</div>'.cr();
			
			$sx .= '<div class="col-md-3">'.cr();
			$sx .= '<input type="string" id="country_type" value="" class="form-control">'.cr();
			$sx .= '</div>'.cr();
			
			$sx .= '<div class="col-md-2">';
			$sx .= '	<button type="button" class="btn btn-primary" id="country_post">'.msg("country_post").'</button>';
			$sx .= '</div>'.cr();
			
			$sx .= '</div> <!-- Row -->'.cr();
			
			$sx .= '<input type="hidden" id="proto_country" value="'.$proto.'">'.cr();
			$sx .= '<input type="hidden" id="proto_check" value="'.checkpost_link($proto).'">'.cr();
			$sx .= '<input type="hidden" id="link_country" value="'.base_url('index.php/ajax/action/country').'">'.cr();
			
			return($sx);
		}	
	
	}
?>
