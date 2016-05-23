<?php
class admin extends CI_Controller {
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
		/* Security */
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

		$txt = '';
		$txt .= '<h1>' . msg('menu_admin') . '</h1>' . cr();
		$txt .= $this -> load -> view('admin/menu_secretary', null, true);
		$txt .= $this -> load -> view('admin/menu_admin', null, true);
		$txt .= $this -> load -> view('admin/menu_super_admin', null, true);
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function message($cmd = '') {
		$this -> load -> model('messages');

		$this -> cab();

		$txt = $this -> messages -> create();
		$data['content'] = $txt;
		$this -> load -> view('content', $data);

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
	}

	function email_test() {
		$this -> cab();

		$form = new form;
		$cp = array();
		if (strlen(get("dd1")) == 0) { $_POST['dd1'] = $_SESSION['email'];
		}
		array_push($cp, array('$H8', '', '', False, True));
		array_push($cp, array('$S50', '', msg('send_to'), True, True));
		array_push($cp, array('$B8', '', msg('send_to'), False, True));
		$data['title'] = msg('email_test');
		$data['content'] = $form -> editar($cp, '');
		$this -> load -> view('content', $data);

		if ($form -> saved > 0) {
			$this -> load -> model("messages");
			$to = get("dd1");
			$subject = msg('email_teste');
			$content = msg('email_teste');
			$ok = $this -> messages -> sendmail($to, $subject, $content);
			$this -> load -> view('successful', null);
		}
	}

	function committee() {
		$this -> load -> model('committees');
		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		$form = new form;
		$form -> id = 1;
		$cp = $this -> committees -> cp();

		$data['title'] = msg('email_test');
		$data['content'] = $form -> editar($cp, $this -> committees -> tabela);

		if ($form -> saved > 0) {
			$this -> load -> view('successful', null);
		} else {
			$this -> load -> view('content', $data);
		}

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
	}

	function message_email() {
		$this -> load -> model('messages');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->edit = true;
		$form->novo = true;
		$form->row_edit = base_url('index.php/admin/message_email_ed');
		$form->row = base_url('index.php/admin/message_email');
		$form->tabela = 'ic_noticia';
		$this->messages->row($form);
		$data['content'] = row($form);
		$data['title'] = msg('messages');
		$this->load->view('content',$data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
	}
	
	function message_email_ed($id=0,$chk='')
		{
		$this -> load -> model('messages');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->id = $id;
		$tabela = 'ic_noticia';
		$cp = $this->messages->cp();
		$data['content'] = $form->editar($cp,$tabela);
		$data['title'] = msg('messages');
		$this->load->view('content',$data);
		
		if ($form->saved > 0)
			{
				redirect(base_url('index.php/admin/message_email'));
				return('');
			}		
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);	
		}

}
?>
