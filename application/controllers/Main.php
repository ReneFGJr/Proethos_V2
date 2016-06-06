<?php
class main extends CI_Controller {
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

		date_default_timezone_set('America/Sao_Paulo');
	}

	function cab($security = 1, $full = 0) {
		/* Model */
		$this -> load -> model('securities');
		if ($security == 1) {
			$this -> securities -> security();
		}

		/* Carrega classes adicionais */
		$css = array();
		$js = array();
		array_push($css, 'form_sisdoc.css');

		/* transfere para variavel do codeigniter */
		$data['css'] = $css;
		$data['js'] = $js;

		$this -> load -> view('header/header', $data);
		$this -> load -> view('header/cab', $data);
	}

	function index() {
		$this -> cab();
		$data['menus'] = array('home' => '#', 'login' => 'main');
		$this -> load -> view('header/breadcrumbs', $data);
	}

	function logout() {
		/* Model */
		$this -> load -> model('securities');
		$this -> securities -> logout();
	}

	function login() {
		/* Model */
		$this -> load -> model('securities');

		$secu = 0;
		$full = 0;
		$this -> cab($secu, $full);

		/* load login page */
		$login = get("email");
		$pass = get("password");

		$dado = array();
		$dado['erro'] = $this -> securities -> login_valid($login, $pass);
		$this -> load -> view("login/login", $dado);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function user_new() {
		/* Model */
		$this -> load -> model('users');
		$this -> load -> model('securities');

		$secu = 0;
		$full = 0;
		$this -> cab($secu, $full);

		/* load login page */
		$email = get("dd3");
		$name = get("dd2");
		$cp = $this -> users -> cp_new_user();

		if ((strlen($email) > 0) and (strlen($name) > 0)) {
			$is_new = $this -> users -> is_new_user($email);
			echo '-->' . $is_new;
			switch ($is_new) {
				/* exist */
				case '0' :
					$msg = '
						<div class="alert alert-danger" role="alert">' . msg('email_exist') . '</div>';
					$cp[4][2] = $msg;
					break;
				case '1' :
					break;
			}
		}

		$form = new form;
		$data['content'] = $form -> editar($cp, '');
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function password() {
		/* Model */
		$this -> load -> model('users');

		$security = 0;
		$this -> cab($security);

		/* load login page */
		$login = get("email");

		if (strlen($login) > 0) {
			$ok = $this -> users -> forgot_password($login);
		} else {
			$ok = 0;
		}

		$dado = array();
		if ($ok <= 0) {
			switch($ok) {
				case '-1' :
					$dado['erro'] = msg('user_not_found') . ': ' . '<b>' . $login . '</b>';
					break;
				case '-2' :
					$dado['erro'] = msg('message_not_found') . ': ' . '<b>send_forgot_password</b>';
					break;
			}
			$this -> load -> view("login/forgot_password", $dado);
		} else {
			$this -> load -> model('messages');
			$txt = $this -> messages -> recover('send_email_text', array());
			$dado['content'] = $txt['nw_descricao'];
			$this -> load -> view("login/forgot_password_success", $dado);
		}

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function research() {
		/* Model */
		$this -> load -> model('ceps');
		$this -> load -> model('submits');

		$us = $_SESSION['badge'];

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		$data['title'] = msg('research');
		$data['content'] = $this -> load -> view('investigators/search', null, true);
		$this -> load -> view('content', $data);

		/*-- Submissão aberta --*/
		$data['title'] = '';
		$data['content'] = '<a href="' . base_url('index.php/submit/new_project') . '" class="btn btn-primary btn-lg">' . msg('submit_new_project') . '</a><br><br>';
		$this -> load -> view('content', $data);
		
		/* Project */
		
		$data['content'] = $this -> ceps -> resume_investigator($us);
		$data['title'] = msg('caption_status_');;
		$this -> load -> view('content', $data);
						

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function committee() {
		/* Model */
		$this -> load -> model('ceps');
		$this -> load -> model('submits');

		$us = $_SESSION['badge'];

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		
		/* RESUME COMMITTEE */
		$data['title']  = msg('resume_committee') . cr();
		$data['content'] = $this -> ceps -> resume_committee($us);
		$this -> load -> view('content', $data);

		/* SEARCH COMMITTEE */
		$txt = '<br><h4>' . msg('find_a_term') . '</h4>';
		$txt .= $this -> load -> view('committee/search', null, true);
		$data['title']  = '';
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$txt = '<br><h2>' . msg('secretary_menu') . '</h2>';
		$txt .= $this -> load -> view('committee/secretary_menu', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$txt = '<br><h2>' . msg('report_menu') . '</h2>';
		$txt .= $this -> load -> view('committee/report_menu', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function protocols($status = '') {
		/* Model */
		$this -> load -> model('ceps');
		$this -> load -> model('submits');

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		switch($status) {
			case 'A' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'B' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'C' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'D' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'E' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'H' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			case 'P' :
				$sx = $this -> ceps -> show_protocols($status);
				break;
			default :
				$sx = '';
				break;
		}
		$data['content'] = $sx;
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);

	}

	function protocol($id = 0, $chk = '') {
		/* Model */
		$this -> load -> model('ceps');
		$this -> load -> model('geds');
		$this -> load -> model('submits');
		$this -> load -> model('messages');
		$this -> load -> model('comments');
		$this -> load -> model('historics');

		$id_us = $_SESSION['id'];

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		$data['menus'] = array('home' => 'main', 'research' => 'main/research');

		$this -> load -> view('header/breadcrumbs', $data);

		/* CHECKSUM */
		if ($chk != checkpost_link($id)) {
			$this -> load -> view('errors/protocol_invalid_checksum', null);
			$this -> foot();
			return ('');
		}

		$data = $this -> ceps -> le($id);
		/* PROTOCOL NOT FOUND */
		if (count($data) < 10) {
			$this -> load -> view('errors/protocol_not_found', null);
			$this -> foot();
			return ('');
		}

		/* READ STATUS */
		$status = $data['cep_status'];
		$data = $this -> ceps -> le($id);

		/* SHOW TITLE */
		$data['title'] = '';
		$data['content'] = $this -> load -> view('protocol/view', $data, true);
		$data['fluid'] = 1;
		$data['bg'] = 'bg1 top20 bottom20';
		$this -> load -> view('content', $data);
		
		/* SHOW FILES */
		$data['title'] = '';
		$data['content'] = $this -> load -> view('protocol/files', $data, true);
		$data['fluid'] = 0;
		$data['bg'] = '';
		$this -> load -> view('content', $data);		

		/* SHOW MESSAGES */
		$data['content'] = '';
		$data['content'] .= $this -> messages -> show_messages($id);
		$data['content'] .= $this -> historics -> show_historic($id);

		$data['content'] .= $this -> messages -> show_messages_list($id);
		$data['content'] .= $this -> historics -> show_historic_list($id);
		
		$data['fluid'] = 0;
		$data['bg'] = 'bg2 top20 bottom20';
		$this -> load -> view('content', $data);

		/* Validate Documents */
		if ($data['cep_status'] == '!') {
			$data['content'] = $this -> ceps -> complement_documments($id);
			$this -> load -> view('content', $data);
		}
		/* Validate Documents */
		if ($data['cep_status'] == '@') {
			$data['content'] = $this -> ceps -> submit_documments($id);
			$this -> load -> view('content', $data);
		}

		/* Survey */
		if ($data['cep_status'] == 'H') {
			if (perfil('#MEM')) {
				$data['content'] = $this -> ceps -> survey_enquete($id);
				$this -> load -> view('content', $data);
			}
			
			if (perfil('#ADM')) {
				$data['content'] = $this -> ceps -> survey_decision($id);
				$this -> load -> view('content', $data);
			}
		}
		$this -> foot();
	}

	function foot() {
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
		return ('');
	}

	function myaccount() {
		/* Model */
		$this -> load -> model('users');

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		$id = round($_SESSION['id']);
		$data = $this -> users -> le($id);
		$data['edit'] = '1';

		$this -> load -> view('user/view', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function myaccount_edit() {
		/* Model */
		$this -> load -> model('users');

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		$form = new form;
		$cp = $this -> users -> cp_myaccount();

		$form -> id = round($_SESSION['id']);

		$tabela = 'usuario';

		$data['title'] = msg('my_account');
		$data['content'] = $form -> editar($cp, $tabela);

		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
		echo '===>' . $form -> saved;
		if ($form -> saved > 0) {
			redirect(base_url('index.php/main/myaccount'));
			return ('');
		}

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function members_committee() {
		/* Model */
		$this -> load -> model('committees');

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		$data['content'] = $this -> committees -> member_committee_list();
		$data['title'] = msg('members_committee');
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

}
?>
