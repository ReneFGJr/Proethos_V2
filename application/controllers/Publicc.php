<?php
class publicc extends CI_Controller {
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

	function cab($security = 0, $full = 0) {
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
	function documents()
		{
		$this -> cab();
		$data['menus'] = array('home' => '#', msg('menu_documents') => 'documents');
		$this -> load -> view('header/breadcrumbs', $data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
		}
	function faq()
		{
		$this -> cab();
		$data['menus'] = array('home' => '#', msg('menu_faq') => 'faq');
		$this -> load -> view('header/breadcrumbs', $data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
		}
	function contact()
		{
		$this -> cab();
		$data['menus'] = array('home' => '#', msg('contact') => 'contact');
		$this -> load -> view('header/breadcrumbs', $data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);		
		}		
}
?>
