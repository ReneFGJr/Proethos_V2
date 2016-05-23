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
		array_push($css, 'bootstrap.css');
		array_push($css, 'form_sisdoc.css');
		array_push($js, 'bootstrap.js');

		/* transfere para variavel do codeigniter */
		$data['css'] = $css;
		$data['js'] = $js;

		$this -> load -> view('header/header', $data);
		$this -> load -> view('header/cab', $data);
		if ($full == 1) {
			$this -> load -> view('header/content_open_full', null);
		} else {
			$this -> load -> view('header/content_open', null);
		}
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
		$txt = '';
		$txt .= '<h1>' . msg('research') . '</h1>' . cr();
		$txt .= $this -> load -> view('investigators/search', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$data['content'] = $this -> ceps -> resume_investigator($us);
		$data['title_resume'] = msg('caption_status_');
		$this -> load -> view('investigators/resume', $data);

		/*-- Submissão aberta --*/
		$data['content'] = '<a href="' . base_url('index.php/submit/new_project') . '" class="btn btn-primary btn-lg">' . msg('submit_new_project') . '</a><br><br>';
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
		$txt = '';
		$txt .= '<h1>' . msg('resume_committee') . '</h1>' . cr();
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$data['content'] = $this -> ceps -> resume_committee($us);
		$this -> load -> view('content', $data);

		$txt = '<br><h4>' . msg('find_a_term') . '</h4>';
		$txt .= $this -> load -> view('committee/search', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$txt = '<br><h2>' . msg('secretary_menu') . '</h2>';
		$txt .= $this -> load -> view('committee/search', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$txt = '<br><h2>' . msg('report_menu') . '</h2>';
		$txt .= $this -> load -> view('committee/search', null, true);
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

		switch($status)
			{
			case 'A':
				$sx = $this -> submits -> show_protocols($status);
				break;
			case 'D':
				$sx = $this -> submits -> show_protocols($status);
				break;				
			case 'E':
				$sx = $this -> submits -> show_protocols($status);
				break;
			case 'P':
				$sx = $this -> submits -> show_protocols($status);
				break;				
			default:
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

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		$data['menus'] = array('home' => 'main', 'research' => 'main/research');

		$this -> load -> view('header/breadcrumbs', $data);

		$data = $this -> ceps -> le($id);

		$status = $data['cep_status'];

		$data = $this -> submits -> le($id);

		$data['title'] = '';
		$data['content'] = $this -> load -> view('submit/view', $data, true);
		$this -> load -> view('content', $data);

		$data['content'] = '<h3>' . msg('files') . '</h3>' . cr();
		$data['content'] .= $this -> geds -> file_list($id);
		$this -> load -> view('content', $data);

		$data['content'] = '';
		$data['content'] .= $this -> messages -> show_messages($id);
		$data['content'] .= $this -> historics -> show_historic($id);

		$data['content'] .= $this -> messages -> show_messages_list($id);
		$data['content'] .= $this -> historics -> show_historic_list($id);

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
		

		switch ($status) {
			case '@' :
				
				break;
		}		

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);

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
		echo '===>'.$form->saved;
		if ($form->saved > 0)
			{
				redirect(base_url('index.php/main/myaccount'));
				return('');
			}
	}
}
?>
