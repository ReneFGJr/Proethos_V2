<?php
class projects extends CI_Model
	{
	function cp_01()
		{
			$cp = array();
			array_push($cp,array('$H8','id_doc','',False,True));
			array_push($cp,array('$RO 1:'.msg('yes').'&0:'.msg('no'),'doc_clinic',msg('q_clinic_study'),True,True));
			array_push($cp,array('$T80:5','doc_1_titulo',msg('title_main'),True,True));
			array_push($cp,array('$T80:5','doc_1_titulo_public',msg('title_public'),True,True));
			array_push($cp,array('$S50','doc_acronym',msg('title_acronym'),True,True));
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			return($cp);
		}
		
	function cp_02($id='')
		{
			$cp = array();
			
			/* team */
			$team = $this->teams->show_team($id);
			$team .= $this->teams->team_new_member($id);
			
			array_push($cp,array('$H8','id_doc','',False,True));
			array_push($cp,array('$M','',$team,False,True));
			
			array_push($cp,array('$A3','',msg('abstract_field'),False,True));
			array_push($cp,array('$T80:5','doc_fld_001',msg('abstract'),True,True));
			array_push($cp,array('$S100','doc_fld_002',msg('keywords'),True,True));
			
			array_push($cp,array('$A3','',msg('introduction'),False,True));
			array_push($cp,array('$T80:5','doc_fld_003',msg('introduction'),True,True));
			array_push($cp,array('$T80:3','doc_fld_004',msg('justsificativa'),True,True));
			array_push($cp,array('$T80:3','doc_fld_005',msg('Objectives'),True,True));			
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			return($cp);
		}	
		
	function cp_03($id='')
		{
			$cp = array();
			
			/* country */
			$country = $this->teams->show_team($id);
			$country .= $this->teams->team_new_member($id);			
					
			array_push($cp,array('$H8','id_doc','',False,True));
			
			array_push($cp,array('$A3','',msg('general_description'),False,True));
			array_push($cp,array('$T80:5','doc_fld_011',msg('design study'),True,True));
			
			array_push($cp,array('$A3','',msg('sample'),False,True));
			
			$op = '#men:'.msg('men');
			$op .= '&#women:'.msg('women');
			$op .= '&#both:'.msg('both');
			$op .= '&#not_applicable:'.msg('not_applicable');
			
			array_push($cp,array('$O '.$op,'doc_fld_013',msg('gender'),True,True));
			//array_push($cp,array('$N8','doc_target_size',msg('target_sample_size'),True,True));
			array_push($cp,array('$N8','',msg('target_sample_size'),True,True));
			array_push($cp,array('$[0-120]','doc_fld_015',msg('minimum age'),True,True));
			array_push($cp,array('$[0-120]','doc_fld_015',msg('maximum age'),True,True));
			
			array_push($cp,array('$T80:3','doc_fld_005',msg('key_inclusion'),True,True));
			array_push($cp,array('$T80:3','doc_fld_005',msg('key_exclusion'),True,True));
			
			array_push($cp,array('$D8','doc_fld_005',msg('Date of enrollment of first participant'),True,True));	
			
			array_push($cp,array('$A3','',msg('countries_recruitment'),False,True));
			array_push($cp,array('$M','',$country,False,True));		
				
			array_push($cp,array('$A3','',msg('intervention'),False,True));
			array_push($cp,array('$T80:6','doc_fld_005',msg('intervention_type'),True,True));
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			
			return($cp);
		}

	function cp_04($id='')
		{
			$cp = array();
			
			/* country */
			$budget = $this->teams->show_team($id);
			$budget .= $this->teams->team_new_member($id);			
					
			array_push($cp,array('$H8','id_doc','',False,True));
			
			array_push($cp,array('$A3','',msg('BUDGET'),False,True));
			array_push($cp,array('$M','',$budget,False,True));
				
			array_push($cp,array('$T80:3','doc_fld_005',msg('source_monetary'),True,True));
			array_push($cp,array('$T80:3','doc_fld_005',msg('primary_sponsor'),True,True));
			array_push($cp,array('$T80:3','doc_fld_005',msg('secondary_sponsor'),True,True));
			
			array_push($cp,array('$A3','',msg('crono'),False,True));
			array_push($cp,array('$M','',$budget,False,True));			
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			
			return($cp);
		}	
		
	function cp_05($id='')
		{
			$cp = array();
			
			/* country */
			$budget = $this->teams->show_team($id);
			$budget .= $this->teams->team_new_member($id);			
					
			array_push($cp,array('$H8','id_doc','',False,True));
			
			array_push($cp,array('$A3','',msg('contacts'),False,True));	
			array_push($cp,array('$T80:3','doc_fld_005',msg('scientific_contact'),True,True));
			
			
			array_push($cp,array('$A3','',msg('local_ethical_approval'),False,True));
			array_push($cp,array('$O 1:'.msg("#yes").'&0:'.msg('#no'),'doc_fld_005',msg('local_ethical_approval'),True,True));			
			array_push($cp,array('$M','',msg('local_ethical'),False,True));
			
			array_push($cp,array('$A3','',msg('references'),False,True));		
			array_push($cp,array('$T80:15','',msg('reference'),False,True));
			
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			
			return($cp);
		}	
		
	function cp_06($id='')
		{
			$cp = array();
			
			/* country */
			$file = $this->geds->file_list($id);
			$file .= $this->teams->team_new_member($id);
			
			array_push($cp,array('$H8','id_doc','',False,True));
			
			array_push($cp,array('$A3','',msg('contacts'),False,True));	
			array_push($cp,array('$M','',$file,False,True));
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			return($cp);
										
		}
	function cp_07($id='')
		{
			$cp = array();
			
			/* validate */
			$valid = $this->projects->validate($id);
			
			array_push($cp,array('$H8','id_doc','',False,True));
			
			array_push($cp,array('$A3','',msg('submit_checklist'),False,True));	
			array_push($cp,array('$M','',$valid,False,True));
			
			array_push($cp,array('$H8','','',True,True));
			
			array_push($cp,array('$B8','',msg('save_next'),False,True));
			return($cp);
		}	
	function validate($id)
		{
			$er = '<div class="alert-danger text-center" role="alert">'.msg('erro').'</div>';
			$ok = '<div class="alert-success text-center" role="success">'.msg('ok').'</div>';
			$erc = ' class="alert-danger danger" ';
			$okc = ' class="alert-success success" ';
			$ck = array($er,$er,$er,$er,$er,$er,$er,$er,$er,$er,$er,$er,$er);
			$cl = array($erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc,$erc);
			
			$cl[2] = $okc;
			$ck[2] = $ok;
			
			$sx = '<table class="table lt2">';
			$sx .= '<tr>
						<th width="90%">'.msg('fieldset').'</th>
						<th width="10%">'.msg('check').'</th>
					</tr>';
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/1').'" '.$cl[0].'>';
			$sx .= '<tr '.$cl[0].'><td>'.$link.msg('title_main').'</a></td>
						<td>'.$link.$ck[0].'</a></td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/1').'" '.$cl[1].'>';
			$sx .= '<tr '.$cl[1].'><td>'.$link.msg('title_public').'</a></td>
						<td>'.$ck[1].'</td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/2').'" '.$cl[2].'>';
			$sx .= '<tr '.$cl[2].'><td>'.$link.msg('abstract').'</a></td>
						<td>'.$ck[2].'</td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/2').'" '.$cl[3].'>';
			$sx .= '<tr '.$cl[3].'><td>'.$link.msg('keywords').'</a></td>
						<td>'.$ck[3].'</td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/2').'" '.$cl[4].'>';
			$sx .= '<tr '.$cl[4].'><td>'.$link.msg('introduction').'</a></td>
						<td>'.$ck[4].'</td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/2').'" '.$cl[5].'>';
			$sx .= '<tr '.$cl[5].'><td>'.$link.msg('justificativa').'</a></td>
						<td>'.$ck[5].'</td></tr>'.cr();
			/* ** 0 ***/
			$link = '<a href="'.base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/2').'" '.$cl[6].'>';
			$sx .= '<tr '.$cl[6].'><td>'.$link.msg('Objectives').'</a></td>
						<td>'.$ck[6].'</td></tr>'.cr();
						
						
			$sx .= '</table>';
			return($sx);
		}	
	}
?>
