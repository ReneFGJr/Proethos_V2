<?php
class submits extends CI_Model {
	var $tabela = 'cep_protocolos';

	function le($id=0)
		{
		$sql = "select * from " . $this -> tabela . "
					left join usuario on cep_pesquisador = us_codigo
					left join (select count(*) as comments, cepc_codigo from cep_comment group by cepc_codigo) as comments on cepc_codigo = cep_protocol
					where id_cep = ".round($id);
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
	function in_edition($ida='')
		{
			$sql = "select count(*) as total from ".$this->tabela." where cep_pesquisador = '$ida' and cep_status = '@' ";
			$rlt = $this->db->query($sql);
			$rlt = $rlt->result_array();
			$tot = 0;
			if (count($rlt) > 0)
				{
					$line = $rlt[0];
					$tot = $line['total'];
				}
			return($tot);			
		}
		
	function create_new_project($ida='',$tipo='')
		{
			$data = date("Ymd");
			$hora = date("H:i");
			
			/* valide */
			$xsql = "select * from ".$this->tabela." where cep_tipo = '$tipo' and cep_pesquisador = '$ida' and cep_data = '$data' and cep_hora = '$hora' ";
			$rlt = $this->db->query($xsql);
			$rlt = $rlt->result_array();
			if (count($rlt) == 0)
			{
				$sql = "insert into ".$this->tabela."
							(
							cep_tipo, cep_versao, cep_data, cep_hora,
							cep_pesquisador, cep_status, cep_atualizado, cep_codigo
							)
							values
							(
							'$tipo','1','$data','$hora',
							'$ida','@','$data',''
							)";
				$rlt = $this->db->query($sql);
				
				$sql = "update ".$this->tabela." set cep_codigo = lpad(id_cep,7,0) where cep_codigo = '' ";
				$rlt = $this->db->query($sql);
				
				$xsql = "select * from ".$this->tabela." 
							WHERE cep_tipo = '$tipo' 
								AND cep_pesquisador = '$ida' 
								AND cep_data = '$data' 
								AND cep_hora = '$hora' ";
				echo $xsql;
				$rlt = $this->db->query($xsql);
				$rlt = $rlt->result_array();
							
				/* CRIA COORDANDOR DA EQUIPE */
				$line = $rlt[0];
				$proto = trim($line['cep_codigo']);
				$user = $_SESSION['badge'];
				$sql = "insert into cep_team 
						(ct_protocol,ct_author,ct_type,ct_data,ct_ativo) 
					values
						('$proto','$user','C','$data','1')";
				$rlt = $this->db->query($sql);
			}
			$line = $rlt[0];
			$id = $line['id_cep'];
		}
	function show_protocols($status = '') {
		$sql = "select * from " . $this -> tabela . "
					left join usuario on cep_pesquisador = us_codigo
					left join (select count(*) as comments, cepc_codigo from cep_comment group by cepc_codigo) as comments on cepc_codigo = cep_protocol
					where cep_status = '$status' ";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();

		$tot = 0;
		$sx = '';
		$sx .= '<h1>' . msg('cep_status_' . $status) . '</h1>' . cr();
		$sx .= '<table width="100%" class="table lt2">';
		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$link = '<a href="' . base_url('index.php/submit/view/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep'])) . '" class="lt3">';
			$tot++;
			$sx .= '<tr>';
			$sx .= '<td width="2%" align="center">';
			$sx .= $tot;
			$sx .= '</td>';
			$sx .= '<td>';
			$sx .= $link . $line['cep_titulo'] . '</a>';
			$sx .= '<br><font class="lt1"><i>' . $line['us_nome'] . '</i></font>';
			$sx .= '<br><font class="lt0">' . msg('update') . ': ' . stodbr($line['cep_atualizado']) . '</font>';
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
						where cep_pesquisador = '$author' 
						";
		$rlt = $this -> db -> query($sql);
		$rlt = $rlt -> result_array();
		$sx = '<table width="100%" class="table">';
		$sx .= '<tr class="lt1">
						<th width="80%">' . msg('title') . '</th>
						<th width="5%">' . msg('type') . '</th>
						<th align="center" width="5%">' . msg('update') . '</th>
						<th width="5%"></th>
					</tr>';

		for ($r = 0; $r < count($rlt); $r++) {
			$line = $rlt[$r];
			$pag = 1;
			$link = '<a href="' . base_url('index.php/submit/project_edit/' . $line['id_cep'] . '/' . checkpost_link($line['id_cep']) . '/' . $pag) . '" class="link">';
			$sx .= '<tr>';
			$sx .= '<td>' . $line['cep_titulo'] . '</td>';
			$sx .= '<td>' . $line['cep_tipo'] . '</td>';
			$sx .= '<td align="center">' . stodbr($line['cep_atualizado']) . '</td>';
			$btn = '<button type="button" class="btn btn-default">' . msg('edit') . '</button>';
			$btn = '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>';
			$sx .= '<td align="center" width="20">' . $link . $btn . '</a></td>';
		}
		$sx .= '</table>';
		return ($sx);
	}
	
	function change_status($id=0,$status='')
		{
			$data = date("Ymd");
			$sql = "update ".$this->tabela." set 
						cep_status = '$status',
						cep_atualizado = '$data' 
					where id_cep = ".round($id);
			$rlt = $this->db->query($sql);
			return(1);
		}

}
?>