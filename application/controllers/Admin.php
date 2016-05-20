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

	function cab($security = 1) {
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
		$this -> load -> view('header/content_open');
	}
	
	function index()
		{
			$this->cab();
			
			$txt = '';
			$txt .= '<h1>'.msg('menu_admin').'</h1>'.cr();
			$txt .= $this->load->view('admin/menu_secretary',null,true);
			$txt .= $this->load->view('admin/menu_admin',null,true);
			$txt .= $this->load->view('admin/menu_super_admin',null,true);
			$data['content'] = $txt;
			$this->load->view('content',$data);
			
			$this->load->view("header/content_close",null);
			$this->load->view("header/footer",null);						
		}
	function message($cmd='')
		{
			$this->load->model('messages');
			
			$this->cab();
			
			$txt = $this->messages->create();
			$data['content'] = $txt;
			$this->load->view('content',$data);
			
			$this->load->view("header/content_close",null);
			$this->load->view("header/footer",null);
		}

}
?>
