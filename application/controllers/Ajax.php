<?php
class ajax extends CI_controller {
	function __construct() {
		parent::__construct();
		$this -> lang -> load("app", "portuguese");
		$this -> lang -> load("proethos", "portuguese");
		$this -> load -> library('form_validation');
		$this -> load -> database();
		$this -> load -> helper('form');
		$this -> load -> helper('form_sisdoc');
		$this -> load -> helper('url');
		$this -> load -> helper('email');
		$this -> load -> library('session');
		//$this -> load -> library('sisdoc_email_autho');

		date_default_timezone_set('America/Sao_Paulo');
	}

	function action($ac = '', $chk = '', $id = '', $comment = '') {
		$id = get("proto");
		$chk = get("check");
		if (strlen($id) == 0) { $id = "78";
		}

		switch ($ac) {
			/* Return to edit */
			case '002' :
				$this -> load -> model('submits');
				$this -> load -> model('messages');
				$this -> load -> model('historics');

				$comment = get("comment");
				$descript = '';

				/* Insert Historic */
				$data = array('proto' => $id, 'comment' => $descript, 'cod' => '002', 'caae' => '');
				$this -> historics -> insert_historic($data);
				$op = $comment;

				$this -> submits -> change_status($id, '@');
				$this -> load -> view('successful', $data);

				return ('');
				break;
			/* recused */
			case '003' :
				$this -> load -> model('submits');
				$this -> load -> model('messages');
				$this -> load -> model('historics');

				$comment = get("comment");

				/* Insert Historic */
				$data = array('proto' => $id, 'comment' => get("comment"), 'cod' => '003', 'caae' => '');
				$this -> historics -> insert_historic($data);

				/* Change Status */
				$this -> submits -> change_status($id, '!');
				$data['return'] = base_url('index.php/main/protocols/A');
				$this -> load -> view('successful', $data);

				/* Send e-mail */
				$proj = $this -> submits -> le($id);
				if (count($proj) > 0) {
					$id_us = $proj['doc_autor_principal'];
					$messa = $this -> messages -> recover("communicate_investig", $proj);
					$this -> messages -> email_to_user($id_us, $messa, strzero($id, 7));
				}

				return ('');
				break;
			/* recused */
			case '009' :
				$this -> load -> model('ceps');
				$this -> load -> model('submits');
				$this -> load -> model('messages');
				$this -> load -> model('historics');

				$comment = get("comment") . $comment;
				$descript = '';

				$op = $comment;
				if (strlen($op) == 0) { $op = '1'; }

				/* Change Status */
				switch ($op) {
					case '1' :
						/* Send e-mail to members */
						/*******************************/
						$data = array();
						
						$data['content'] = $this -> ceps -> survey_members($id);
						$this->load->view('content',$data);
						
						/*******************************/
						$this -> ceps -> niec_set($id);
						$this -> submits -> change_status($id, 'H');
					
						/* Insert Historic */
						$data = array('proto' => $id, 'comment' => $descript, 'cod' => '00H', 'caae' => '');
						$this -> historics -> insert_historic($data);
						

						break;
					case '2' :

						$this -> ceps -> niec_set($id);
						$this -> submits -> change_status($id, 'E');
						
						/* Insert Historic */
						$data = array('proto' => $id, 'comment' => $descript, 'cod' => '009', 'caae' => '');
						$this -> historics -> insert_historic($data);						

						break;
					default :
						break;
				}

				$data['return'] = base_url('index.php/main/protocols/A');
				$this -> load -> view('successful', $data);

				/* Send e-mail */
				$proj = $this -> submits -> le($id);
				if (count($proj) > 0) {
					$id_us = $proj['cep_pesquisador'];
					$messa = $this -> messages -> recover("communicate_investig", $proj);
					$this -> messages -> email_to_user($id_us, $messa, strzero($id, 7));
				}

				return ('');
				break;
			case '999' :
				$this -> load -> model('submits');
				$this -> load -> model('messages');
				$this -> load -> model('historics');

				$comment = get("comment");
				$descript = '';

				/* Insert Historic */
				$data = array('proto' => $id, 'comment' => $descript, 'cod' => '999', 'caae' => '');
				$this -> historics -> insert_historic($data);
				$op = $comment;

				$this -> submits -> change_status($id, 'X');
				$this -> load -> view('successful', $data);

				return ('');
				break;
			case '00H':
				$this -> load -> model('ceps');
				$user_id = $_SESSION['id'];
				$user_badge = $_SESSION['badge'];
				$answer = get("comment");
				$proto = get('proto');
				$this->ceps->survey_answer($proto,$user_id,$answer);
				break;
			case 'team':
				$this->load->model('teams');
				$email = get("comment");
				$proto = get("proto");
				$data['content'] = $this->teams->insert_new_investigator($proto,$email);
				$this->load->view('display',$data);
				break;
			case 'team_del':
				$this->load->model('teams');
				$id = round(get("id"));
				$proto = get("proto");
				$data['content'] = $this->teams->remove_investigator($proto,$id);
				$this->load->view('display',$data);
				break;
			case 'country':
				$this->load->model('countries');
				$size = round(get("size"));
				$country = get("country");
				$proto = get("proto");
				$desc = get("comment");
				if ($size > 0)
					{
						$data['content'] = $this->countries->insert($proto,$country,$size,$desc);		
					} else {
						$data['content'] = $this->countries->show($proto,1);
					}
				
				$this->load->view('display',$data);
				break;	
			case 'country_del':
				$this->load->model('countries');
				$id = round(get("id"));
				$proto = get("proto");
				$data['content'] = $this->countries->remove($proto,$id);
				$this->load->view('display',$data);
				break;
			case 'budget':
				$this->load->model('budgets');
				$size = round(get("size"));
				$budget = get("budget");
				$proto = get("proto");
				$desc = get("comment");
				print_r($_POST);
				if ($size > 0)
					{
						$data['content'] = $this->budgets->insert($proto,$budget,$size,$desc);		
					} else {
						$data['content'] = $this->budgets->show($proto,1);
					}
				
				$this->load->view('display',$data);
				break;	
			case 'budget_del':
				$this->load->model('budgets');
				$id = round(get("id"));
				$proto = get("proto");
				$data['content'] = $this->budgets->remove($proto,$id);
				$this->load->view('display',$data);
				break;										
			default:
				echo '<font color="red">'.$ac.' Not implemented'.'</font>';
		}

	}

}
?>
