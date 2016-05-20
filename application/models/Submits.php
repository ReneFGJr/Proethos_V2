<?php
class submits extends CI_Model {
	var $tabela = 'cep_submit_documento';
	
	function le($id=0)
		{
		$sql = "select * from " . $this -> tabela . "
					left join usuario on doc_autor_principal = us_codigo
					left join (select count(*) as comments, cepc_codigo from cep_comment group by cepc_codigo) as comments on cepc_codigo = doc_protocolo
					where id_doc = ".$id;
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		if (count($rlt) > 0)
			{
				$line = $rlt[0];
				$line['authors'] = '';
				return($line);
			} else {
				$line = array();
				return($line);
			}			 
		}
	function show_protocols($status = '') {
		$sql = "select * from " . $this -> tabela . "
					left join usuario on doc_autor_principal = us_codigo
					left join (select count(*) as comments, cepc_codigo from cep_comment group by cepc_codigo) as comments on cepc_codigo = doc_protocolo
					where doc_status = 'A' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();

		$tot = 0;
		$sx = '';
		$sx .= '<h1>' . msg('cep_status_' . $status) . '</h1>' . cr();
		$sx .= '<table width="100%" class="table lt2">';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$link = '<a href="' . base_url('index.php/submit/view/' . $line['id_doc'] . '/' . checkpost_link($line['id_doc'])) . '" class="lt3">';
			$tot++;
			$sx .= '<tr>';
			$sx .= '<td width="2%" align="center">';
			$sx .= $tot;
			$sx .= '</td>';
			$sx .= '<td>';
			$sx .= $link . $line['doc_1_titulo'] . '</a>';
			$sx .= '<br><font class="lt1"><i>' . $line['us_nome'] . '</i></font>';
			$sx .= '<br><font class="lt0">' . msg('update') . ': ' . stodbr($line['doc_dt_atualizado']) . '</font>';
			$sx .= ' - ';
			$sx .= '<font class="lt0">' . round($line['comments']) . ' ' . msg('comment') . '</fonts>';
			$sx .= '</td>';

			$sx .= '<td width="2%">';
			$sx .= $link;
			$sx .= '<span class="glyphicon glyphicon-search" aria-hidden="true"></span>';
			$sx .= '</a>';
			$sx .= '</td>';
		}
		$sx .= '<tr><td colspan="10">' . msg('total') . ' ' . $tot . ' ' . msg('records') . '</td></tr>' . cr();
		$sx .= '</table>';
		return ($sx);
	}

	function resume_investigator($id = 0) {
		$author = $_SESSION['badge'];
		$sql = "select * from " . $this -> tabela . " 
						where doc_autor_principal = '$author' 
						";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '<table width="100%" class="table">';
		$sx .= '<tr class="lt1">
						<th width="80%">' . msg('title') . '</th>
						<th align="center" width="5%">' . msg('update') . '</th>
						<th width="5%"></th>
					</tr>';

		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$pag = 1;
			$link = '<a href="' . base_url('index.php/submit/project_edit/' . $line['id_doc'] . '/' . checkpost_link($line['id_doc']) . '/' . $pag) . '" class="link">';
			$sx .= '<tr>';
			$sx .= '<td>' . $line['doc_1_titulo'] . '</td>';
			$sx .= '<td align="center">' . stodbr($line['doc_dt_atualizado']) . '</td>';
			$btn = '<button type="button" class="btn btn-default">' . msg('edit') . '</button>';
			$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
			$sx .= '<td align="center" width="20">' . $link . $btn . '</a></td>';
		}
		$sx .= '</table>';
		return ($sx);
	}

}
?>