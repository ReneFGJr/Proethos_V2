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
		$this -> load -> library('session');
		$this -> load -> library('email');

		date_default_timezone_set('America/Sao_Paulo');
	}

	function action($ac = '', $chk = '') {
		$id = get("proto");
		$chk = get("check");
		if (strlen($id) == 0) { $id = "78";
		}
		echo "========>".$ac;
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
				$this -> load -> model('submits');
				$this -> load -> model('messages');
				$this -> load -> model('historics');

				$comment = get("comment");
				$descript = '';

				/* Insert Historic */
				$data = array('proto' => $id, 'comment' => $descript, 'cod' => '009', 'caae' => '');
				$this -> historics -> insert_historic($data);
				$op = $comment;
				
				/* Change Status */
				switch ($op) {
					case '1' :
						/* Disptar e-mail para membros */
						/*******************************/
						/*******************************/
						$this -> submits -> change_status($id, 'D');
						break;
					case '2' :
						$this -> submits -> change_status($id, 'E');
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
		}

	}

}
?>
