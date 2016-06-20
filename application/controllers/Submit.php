<?php
class submit extends CI_Controller {
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

	function logout() {
		/* Model */
		$this -> load -> model('securities');
		$this -> securities -> logout();
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

		/* transfere para variavel do codeigniter */
		$data['css'] = $css;
		$data['js'] = $js;

		$this -> load -> view('header/header', $data);
		$this -> load -> view('header/cab', $data);
	}

	function index() {
		redirect(base_url('index.php/main'));
	}

	function new_project() {
		$this -> load -> model('submits');
		$ida = $_SESSION['badge'];
		/* Checa abertos */
		$tot = $this -> submits -> in_edition($ida);

		if ($tot == 0) {
			$id = $this -> submits -> create_new_project($ida, 'PRO');
			$pag = 1;

			$link = base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/' . $pag);
			echo $link;
			exit ;
			redirect($link);
		}

		$pag = 0;
		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		$data = array();
		$this -> load -> view('submit/new_project', $data);

		//redirect(base_url('index.php/submit/project_edit/' . $id . '/' . checkpost_link($id) . '/' . $pag));

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function project_edit($id = 0, $chk = '', $pag = 0) {
		$this -> load -> model('ceps');
		$this -> load -> model('geds');
		$this -> load -> model('teams');
		$this -> load -> model('budgets');
		$this -> load -> model('submits');
		$this -> load -> model('countries');
		$this -> load -> model('projects');
		$this -> load -> model('primary_registration');
		$page_link = 'submit/project_edit';
		/* Page */
		if ($pag <= 0) {
			$pag = 1;
		}
		if ($chk != checkpost_link($id)) {
			redirect(base_url('index.php/main'));
		}

		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		/* Leitura */
		$pj = $this -> submits -> le($id);

		if (count($pj) == 0) {
			redirect(base_url('index.php/main'));
			return ('');
		}
		if ($pj['cep_status'] != '@') {
			$pj['title'] = '';
			$pj['content'] = $this -> load -> view('submit/view', $pj, true);
			$this -> load -> view('content', $pj);

			$this -> load -> view('submit/not_edition', null);
			return ('');
		}

		$data['page'] = $pag;
		$data['id'] = $id;
		$data['chk'] = $chk;
		$data['link'] = $page_link;
		$data['max_menu'] = 7;
		$proto = strzero($id, 7);
		//$data['page_enable'] = 1;

		$this -> load -> view('submit/header_project', $data);

		/* Save Data */
		if (strlen(get("acao")) > 0) {
			$this -> projects -> save_protocol($proto, '00001', $pag);
		}

		/* Mount screen */

		$form = new form;
		$form -> id = $id;
		$tabela = '';

		switch ($pag) {
			case '1' :
				$tabela = $this -> projects -> tabela;
				$cp = $this -> projects -> cp_01($id);
				break;
			case '2' :
				$cp = $this -> projects -> cp_02($id);
				break;
			case '3' :
				$cp = $this -> projects -> cp_03($id);
				break;
			case '4' :
				$cp = $this -> projects -> cp_04($id);
				break;
			case '5' :
				$cp = $this -> projects -> cp_05($id);
				break;
			case '6' :
				$cp = $this -> projects -> cp_06($id);
				break;
			case '7' :
				$cp = $this -> projects -> cp_07($id);
				break;
			case '8' :
				$this -> projects -> finish($id);
				redirect(base_url('index.php/main/research'));
				return ('');
				break;
			default :
				$cp = array();
				break;
		}

		$data['title'] = msg('submit_process');
		$data['content'] = $form -> editar($cp, $tabela);

		/* Saved */
		if ($form -> saved > 0) {
			$pag++;
			$link = base_url('index.php/' . $page_link . '/' . $id . '/' . $chk . '/' . $pag);
			redirect($link);
		}

		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function view($id = 0, $chk = '') {
		$this -> load -> model('ceps');
		$this -> load -> model('geds');
		$this -> load -> model('submits');
		$this -> load -> model('messages');
		$this -> load -> model('comments');
		$this -> load -> model('historics');
		$this -> load -> model('primary_registration');

		/* checks */
		if ($chk != checkpost_link($id)) {
			redirect(base_url('index.php/main'));
		}

		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);

		$data = $this -> submits -> le($id);
		if (count($data) < 10) {
			redirect('index.php');
		}
		$data['title'] = '';
		$data['content'] = $this -> load -> view('submit/view', $data, true);
		$this -> load -> view('content', $data);

		$data['content'] = '<h3>' . msg('files') . '</h3>' . cr();
		$data['content'] .= $this -> geds -> file_list($id);
		$this -> load -> view('content', $data);

		$data['content'] = $this -> messages -> show_messages($id);
		$data['content'] .= $this -> comments -> show_messages($id);
		$data['content'] .= $this -> historics -> show_historic($id);

		$data['content'] .= $this -> messages -> show_messages_list($id);
		$data['content'] .= $this -> comments -> show_messages_list($id);
		$data['content'] .= $this -> historics -> show_historic_list($id);

		$this -> load -> view('content', $data);

		/* Validate Documents */
		if ($data['cep_status'] == 'A') {
			$data['content'] = $this -> ceps -> validate_documments($id);
			$this -> load -> view('content', $data);
		}

		/* Atribute */
		if ($data['cep_status'] == 'D') {
			$data['content'] = $this -> ceps -> meeting_documments($id);
			$this -> load -> view('content', $data);
		}

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

}
?>
