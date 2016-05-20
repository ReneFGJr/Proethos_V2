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

	function logout()
		{
		/* Model */
		$this -> load -> model('securities');
		$this->securities->logout();	
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
		if ($full == 1)
			{
				$this -> load -> view('header/content_open_full',null);
			} else {
				$this -> load -> view('header/content_open',null);
			}
		
	}

	function index() {
		redirect(base_url('index.php/main'));
	}

	function new_project()
		{
			$pag = 0;
			$id = 1;
			redirect(base_url('index.php/submit/project_edit/'.$id.'/'.checkpost_link($id).'/'.$pag));
		}
	
	function project_edit($id=0,$chk='',$pag=0)
		{
			/* Page */
			if ($pag <= 0)
				{
					$pag = 1;
				}
			
			$this->cab();
			
			$data['page'] = $pag;
			$this->load->view('submit/header_project',$data);
		}
}
?>
