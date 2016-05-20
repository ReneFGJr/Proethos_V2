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

	function logout()
		{
		/* Model */
		$this -> load -> model('securities');
		$this->securities->logout();	
		}
		
	function login() {
		/* Model */
		$this -> load -> model('securities');

		$security = 0;
		$this -> cab($security);

		/* load login page */
		$login = get("email");
		$pass = get("password");

		$dado = array();
		$dado['erro'] = $this -> securities -> login_valid($login, $pass);
		$this -> load -> view("login", $dado);
	}
	
	function research()
		{
			/* Model */
			$this->load->model('ceps');
			$this->load->model('submits');
			
			$us = $_SESSION['badge'];
			
			$secu = 1;
			$full = 1;
			$this->cab($secu,$full);
			$txt = '';
			$txt .= '<h1>'.msg('research').'</h1>'.cr();
			$txt .= $this->load->view('investigators/search',null,true);
			$data['content'] = $txt;
			$this->load->view('content',$data);
			
			$data['content'] = $this->submits->resume_investigator($us);
			
			$data['title_resume'] = msg('caption_submit');
			$this->load->view('investigators/resume_submit',$data);
			
			/*-- Submissão aberta --*/
			$data['content'] = '<a href="'.base_url('index.php/submit/new_project').'" class="btn btn-primary btn-lg">'.msg('submit_new_project').'</a><br><br>';
			$this->load->view('content',$data);
			
			$data['content'] = $this->ceps->resume_investigator($us);
			$data['title_resume'] = msg('caption_status_');
			$this->load->view('investigators/resume',$data);
			
			$this->load->view("header/content_close",null);
			$this->load->view("header/footer",null);
		}

	function committee()
		{
			/* Model */
			$this->load->model('ceps');
			$this->load->model('submits');
			
			$us = $_SESSION['badge'];
			
			$secu = 1;
			$full = 1;
			$this->cab($secu,$full);
			$txt = '';
			$txt .= '<h1>'.msg('resume_committee').'</h1>'.cr();
			$data['content'] = $txt;
			$this->load->view('content',$data);
			
			$data['content'] = $this->ceps->resume_committee($us);
			$this->load->view('content',$data);
			
			$txt = '<br><h4>'.msg('find_a_term').'</h4>';
			$txt .= $this->load->view('committee/search',null,true);
			$data['content'] = $txt;
			$this->load->view('content',$data);
						
			$txt = '<br><h2>'.msg('secretary_menu').'</h2>';
			$txt .= $this->load->view('committee/search',null,true);
			$data['content'] = $txt;
			$this->load->view('content',$data);
			
			$txt = '<br><h2>'.msg('report_menu').'</h2>';
			$txt .= $this->load->view('committee/search',null,true);
			$data['content'] = $txt;
			$this->load->view('content',$data);			


			$this->load->view("header/content_close",null);
			$this->load->view("header/footer",null);
		}

	function protocols($status='')
		{
			/* Model */
			$this->load->model('ceps');
			$this->load->model('submits');
						
			$secu = 1;
			$full = 1;
			$this->cab($secu,$full);
			
			if ($status == 'A')
				{
					$sx = $this->submits->show_protocols($status);
				} else {
					$sx = '';
				}
			$data['content'] = $sx;
			$this->load->view('content',$data);
			
			$this->load->view("header/content_close",null);
			$this->load->view("header/footer",null);		
			
		}

	function protocol($id=0,$chk='')
		{
			/* Model */
			$this->load->model('ceps');			
			
		$this -> cab();
		$data['menus'] = array('home' => 'main', 'research' => 'main/research');		
		
		$this -> load -> view('header/breadcrumbs', $data);
		
		$data = $this->ceps->le($id);
		print_r($data);
		
		$this->load->view('protocol/view',$data);
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
		$this -> cab();
		$data['menus'] = array('home' => '#', 'login' => 'main');
		$this -> load -> view('header/breadcrumbs', $data);

	}

}
?>
