<?php
class ceps extends CI_Model
	{
		function le($id)
			{
				$id = round($id);
				$sql = "select * from cep_protocolos
							where id_cep = $id ";
				$rlt = $this->db->query($sql);
				$rlt = $rlt->result_array();
				if (count($rlt) > 0)
					{
						$line = $rlt[0];
						$line['cep_authors'] = 'Authores';
						return($line);
					}
				return(array());
			}
		function resume_investigator($id)
			{
				$id = strzero($id,7);
				$sql = "select * from cep_protocolos
							WHERE cep_pesquisador = '$id'
				";
				$rlt = $this->db->query($sql);
				$rlt = $rlt->result_array();
				$sx = '';
				for ($r=0;$r < count($rlt);$r++)
					{
						$line = $rlt[$r];
						$link = '<a href="'.base_url('index.php/main/protocol/'.$line['id_cep'].'/'.checkpost_link($line['id_cep'])).'">';
						$sx .= '<tr>';
						$sx .= '<td>'.$link.$line['cep_caae'].'</a>'.'</td>';
						$sx .= '<td>'.$link.$line['cep_titulo'].'</a>'.'</td>';
						$sx .= '<td>'.$link.stodbr($line['cep_atualizado']).'</a>'.'</td>';
						$sx .= '<td>'.$link.msg($line['cep_pr_protocol']).'</a>'.'</td>';
						$sx .= '</tr>';
					}
				return($sx);
			}
	}
?>
