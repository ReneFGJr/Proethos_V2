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
 * @subpackage Budgets
 */
  
class budgets extends CI_model
	{
	function remove($proto,$id)
		{
			$sql = "update cep_submit_orca set sorca_ativo = 0 where id_sorca = ".round($id);
			$rlt = $this->db->query($sql);
			$sx = $this->show($proto,1);				
			return($sx);			
		}
	function insert($proto,$budget,$size, $comment)
		{
			$sql = "insert into cep_submit_orca
					(
					sorca_protocol, sorca_descricao, sorca_unid, sorca_valor, sorca_ativo, sorca_finan
					) values (
					'$proto','$comment','$size','$budget','1',''
					)";
			$rlt = $this->db->query($sql);
			$sx = $this->show($proto,1);				
			return($sx);			
		}
	function show($id=0,$edit=1,$erro='')
		{
			$proto = strzero($id,7);	
			$sql = "select * from cep_submit_orca
					where sorca_protocol = '$proto' and sorca_ativo = 1
					order by sorca_descricao ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			
			$sx = '<table class="table lt2" width="100%">';
			//$sx .= '<tr><th colspan="6" class="lt3">'.msg('team').'</th></tr>'.cr();
			$sx .= '<tr>
						<th width="2%">#</th>
						<th width="60%">'.msg('sorca_descricao').'</th>
						<th width="6%">'.msg('sorca_unid').'</th>
						<th width="15%">'.msg('sorca_valor').'</th>
						<th width="15%">'.msg('sorca_valor').'</th>
						<th>-</th>						
					</tr>';
			$tot = 0;
			$total  = 0;
			for ($r=0;$r < count($rlt);$r++)
				{
					$line = $rlt[$r];
					$total = $total + ($line['sorca_valor'] * $line['sorca_unid']);
					$tot++;
					$sx .= '<tr>';
					$sx .= '<td>'.$tot.'</td>';
										
					$sx .= '<td>'.$line['sorca_descricao'].'</td>';
					$sx .= '<td align="center">'.$line['sorca_unid'].'</td>';
					$sx .= '<td align="right">'.number_format($line['sorca_valor'] , 2 ,',','.').'</td>';
					$sx .= '<td align="right">'.number_format($line['sorca_valor'] * $line['sorca_unid'],2,',','.').'</td>';
					$title = msg('remove_budget');
					$content = $line['sorca_descricao'];
					$link = base_url('index.php/ajax/action/budget_del/');
					$idin = $line['id_sorca'];
					$check = checkpost_link($idin);
					$proto = strzero($id,7);
						
					$link = ' onclick="remove_budget(\''.$proto.'\',\''.$title.'\',\''.$content.'\',\''.$idin.'\',\''.$link.'\',\''.$check.'\');" ';
					$sx .= '<td width="10" align="right">';
					//$sx .= '<button type="button" class="btn" data-toggle="modal" data-target="#myModal">';
					$sx .= '<span class="glyphicon glyphicon-trash" aria-hidden="true" style="cursor: pointer;" '.$link.'></span>';
					//$sx .= '</button>';
					// $('#myModal').modal(options)
					$sx .= '</td>';					
					$sx .= '</tr>';
				}
			if ($total > 0)
				{
					$sx .= '<tr>
								<td align="right" colspan=4 ><b>Total</b></td>
								<td align="right"><b>'.number_format($total,2,',','.').'</b></td>
							</tr>';
				}
			$sx .= '</table>';							
			return($sx);
		}
	function novo_form($proto)
		{
			/* Budgets Row */						
			$sx = '';
			$sx .= '<div class="row bg1" style="padding: 10px 10px;">'.cr();
			
			/* Description */
			$sx .= '<div class="col-md-2 small text-right">'.cr();
			$sx .= msg('budget_desc').':'.cr();
			$sx .= '</div>'.cr();
			
			$sx .= '<div class="col-md-3">'.cr();
			$sx .= '<input type="string" id="budget_type" value="" class="form-control">'.cr();
			$sx .= '</div>'.cr();
			
			/* Quant */			
			$sx .= '<div class="col-md-1 small text-right">';
			$sx .= 			msg('budget_qt').': ';
			$sx .= '</div>'.cr();
			/* Input size */
			$sx .= '<div class="col-md-1">';
			$sx .= '     <input value="" type="string" class="form-control text-right" id="budget_source">'.cr();
			$sx .= '</div>'.cr();
			
			/* Quant */			
			$sx .= '<div class="col-md-1 small text-right">';
			$sx .= 			msg('budget_vlr').': ';
			$sx .= '</div>'.cr();
			/* Input size */
			$sx .= '<div class="col-md-2">';
			$sx .= '     <input value="" type="string" class="form-control text-right" id="budget_vlr">'.cr();
			$sx .= '</div>'.cr();
						
			$sx .= '<div class="col-md-2">';
			$sx .= '	<button type="button" class="btn btn-primary" id="budget_post">'.msg("budget_post").'</button>';
			$sx .= '</div>'.cr();
			
			$sx .= '</div> <!-- Row -->'.cr();
			
			$sx .= '<input type="hidden" id="proto_budget" value="'.$proto.'">'.cr();
			$sx .= '<input type="hidden" id="proto_check" value="'.checkpost_link($proto).'">'.cr();
			$sx .= '<input type="hidden" id="link_budget" value="'.base_url('index.php/ajax/action/budget').'">'.cr();
			
			return($sx);
		}	
	
	}
?>
