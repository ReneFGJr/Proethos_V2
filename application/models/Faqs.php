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
 * FAQ
 * @author Rene Faustino Gabriel Junior <renefgj@gmail.com> (Analista-Desenvolvedor)
 * @copyright © Pan American Health Organization, 2013. All rights reserved.
 * @access public
 * @version v0.11.29
 * @package Model
 * @subpackage faqs
 */

class faqs extends CI_Model
	{
	var $id_faq;
	var $faq_pergunta;
	var $faq_resposta;
	var $faq_ordem;
	var $faq_ativo;
	var $faq_seccao;

	var $tabela = 'faq';
	
	function cp() {
		global $lg;
		$cp = array();
		array_push($cp, array('$H8', 'id_faq', 'id_faq', False, True));
		array_push($cp, array('$T80:4', 'faq_pergunta', msg('question'), True, True));
		array_push($cp, array('$T80:4', 'faq_resposta', msg('answer'), True, True));
		array_push($cp, array('$[1-120]', 'faq_ordem', msg('order'), True, True));
		array_push($cp, array('$O 1:'.msg('yes').'&0:'.msg('no'), 'faq_ativo', msg('ativo'), True, True));
		//array_push($cp,array('$Q n_descricao:n_codigo:select * from nucleo where n_ativo=1','faq_seccao',msg('nucleo'),True,True));
		array_push($cp, array('$HV', 'faq_seccao', 'CEP', True, True));
		array_push($cp, array('$Q i_codigo:i_nome:select * from apoio_idioma', 'faq_idioma', msg('idioma'), True, True));
		return ($cp);
	}

	function row($obj) {
		$obj->fd = array('id_faq', 'faq_pergunta', 'faq_ordem', 'faq_seccao', 'faq_idioma', 'faq_ativo');
		$obj->lb = array('cod', msg('question'), msg('ord'), msg('nucleo'), msg('language'), msg('ativo'));
		$obj->mk = array('', '', '', '', '', 'SN');
		return ($obj);
	}

	function updatex() {
		return (1);
	}

	function show($faq_seccao='') {
		$sql = "select * from " . $this -> tabela;
		//$sql .= " where faq_seccao = '" . $faq_seccao . "' ";
		//$sql .= " and faq_idioma = '" . $LANG . "' ";
		$sql .= " where faq_ativo = 1";
		$sql .= " order by faq_idioma, faq_ordem ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '';
		$per = 0;
		$sx .= '<div class="container">';
		$sx .= '  <div class="row">';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$per++;
			$sx .= '<div class="col-md-12 font1">';
			$sx .= '	<h3>'.$per.'';
			$sx .= '	<a tag="#fq' . $line['id_faq'] . '"></a>';
			$sx .= '	<a href="#fq' . $line['id_faq'] . '" style="font1 link" onclick="mostra_answer(' . $line['id_faq'] . ');">';				
			$sx .= 		trim($line['faq_pergunta']);
			$sx .= '	</a>';
			$sx .= '	</h3>';
			$sx .= '</div>';
			
			$sx .= '<div class="col-md-12 text-justify" >';
			$sx .= '	<div id="faq' . $line['id_faq'] . '" style="display: none; border-left: 20px solid #eeeeee; padding:10px;" class="lt2">' . cr();
			$sx .= 		mst(trim($line['faq_resposta'])) . cr();
			$sx .= '	</div>' . cr();
			$sx .= '</div>' . cr();
		}
		$sx .= '  </div>';
		$sx .= '</div>';
		$sx .= '<script>' . cr();
		$sx .= 'function mostra_answer(id) {' . cr();
		$sx .= " var local = '#faq'+id; " . cr();
		$sx .= ' var tela01 = $(local).toggle("slow"); ' . cr();
		$sx .= '}' . cr();
		$sx .= '</script>' . cr();
		return ($sx);

	}

}
?>
