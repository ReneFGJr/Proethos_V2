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
		$this -> load -> helper('email');
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
		array_push($css, 'form_sisdoc.css');

		/* transfere para variavel do codeigniter */
		$data['css'] = $css;
		$data['js'] = $js;

		$this -> load -> view('header/header', $data);
		$this -> load -> view('header/cab', $data);
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
		global $email_debug;
		$this->load->model('committees');
		$this -> cab();

		$form = new form;
		$cp = array();
		if (strlen(get("dd1")) == 0) { $_POST['dd1'] = $_SESSION['email'];
		}
		array_push($cp, array('$H8', '', '', False, True));
		array_push($cp, array('$S50', '', msg('send_to'), True, True));
		array_push($cp, array('$B8', '', msg('send_to'), False, True));
		
		array_push($cp, array('$M8', '', $this->committees->email_data(), False, True));
		
		$data['title'] = msg('email_test');
		$data['content'] = $form -> editar($cp, '');

		if ($form -> saved > 0) {
			$this -> load -> model("messages");
			$to = get("dd1");
			$subject = msg('email_teste');
			$content = msg('email_teste');
			$email_debug = true;
			$data['content'] = sendmail($to, $subject, $content);
			$this->load->view('content',$data);
			//$data['return'] = base_url('index.php/admin/email_test');
			$this -> load -> view('successful', $data);
			$email_debug = false;
			
			$this -> load -> view('content', $data);
		} else {
			$this -> load -> view('content', $data);
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

		$data['title'] = '';
		$data['content'] = $form -> editar($cp, $this -> committees -> tabela);

		if ($form -> saved > 0) {
			$this -> load -> view('successful', null);
		} else {
			$this -> load -> view('content', $data);
		}

		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
	}

	function committee_email() {
		$this -> load -> model('committees');
		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);

		$form = new form;
		$form -> id = 1;
		$cp = $this -> committees -> cp_email();

		$data['title'] = msg('committee');
		$data['content'] = $form -> editar($cp, $this -> committees -> tabela);

		if ($form -> saved > 0) {
			$data['return'] = base_url('index.php/admin');
			$this -> load -> view('successful', $data);
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
	
	function assign_to_user_profile()
		{
		$this -> load -> model('users');
		$this -> load -> model('messages');
		
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$sx = $this->users->perfil_atribui_form();
		
		//$perfil->set($dd[1]);
		
		//echo $perfil->display();		
		
		$data['content'] = $sx;
		$data['title'] = msg('assign_to_user_profile');
		$this->load->view('content',$data);
		
		$id = get("dd1");
		if (strlen($id) > 0)
			{
				$data['title'] = '';
				$data['content'] = $this->users->perfil_show($id);
				$this->load->view('content',$data);
			}
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);
		}

	function user() {
		$this -> load -> model('users');
		$secu = 1;
		$full = 1;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->edit = true;
		$form->novo = true;
		$form->row_edit = base_url('index.php/admin/user_ed');
		$form->row = base_url('index.php/admin/user');
		$form->tabela = 'usuario';
		$this->users->row($form);
		$data['content'] = row($form);
		$data['title'] = msg('user');
		$this->load->view('content',$data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
	}
	
	function user_ed($id=0,$chk='')
		{
		$this -> load -> model('users');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->id = $id;
		$tabela = 'usuario';
		$cp = $this->users->cp_admin();
		$data['content'] = $form->editar($cp,$tabela);
		$data['title'] = msg('users');
		$this->load->view('content',$data);
		
		if ($form->saved > 0)
			{
				redirect(base_url('index.php/admin/user'));
				return('');
			}		
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);	
		}
	function faqs() {
		$this -> load -> model('faqs');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->edit = true;
		$form->novo = true;
		$form->row_edit = base_url('index.php/admin/faqs_ed');
		$form->row = base_url('index.php/admin/faqs');
		$form->tabela = $this->faqs->tabela;
		$form = $this->faqs->row($form);
		
		$data['content'] = row($form);
		$data['title'] = msg('menu_faqs');
		$this->load->view('content',$data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
	}
	
	function faqs_ed($id=0,$chk='')
		{
		$this -> load -> model('faqs');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		$form = new form;
		$form->id = $id;
		$tabela = $this->faqs->tabela;
		$cp = $this->faqs->cp();
		$data['content'] = $form->editar($cp,$tabela);
		$data['title'] = msg('menu_faq');
		$this->load->view('content',$data);
		
		if ($form->saved > 0)
			{
				redirect(base_url('index.php/admin/faqs'));
				return('');
			}		
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);	
		}
	function admin_submission($type='',$pag='1')
		{
		$this->load->model('fields');
		
		$this -> load -> model('faqs');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);

		/* DATA */
		$data = array();
		
		switch($type)
			{
			case 'project':
				$data['pages'] = 7;
				$data['page'] = 'index.php/admin/admin_submission/'.$type.'/';
				$data['active'] = $pag;
				$data['caption'] = 'cep_submit_manuscrito_field';
				$typec = '00001';
				break;	
			default:
				$data['pages'] = 3;
				$data['page'] = 'index.php/admin/admin_submission/'.$type.'/';
				$data['active'] = $pag;
				$data['caption'] = 'amendment_'.$type;
				$typec = strzero($type,5);
				break;								
			}		
		$this->load->view('records/pages',$data);
		
		/* Show Fields */
		
		$data['content'] = $this->fields->row_records($typec,$pag);
		$this->load->view('content',$data);		
			
		}	
	function ghost()
		{
		$this -> load -> model('users');
		$secu = 1;
		$full = 0;
		$this -> cab($secu, $full);
		
		if (!(perfil("#ADM")))
			{
				redirect(base_url('index.php/main'));
			}
		
		$form = new form;
		$form->edit = false;
		$form->novo = false;
		$form->see = true;
		$form->row_view = base_url('index.php/admin/user_ghost');
		$form->row = base_url('index.php/admin/ghost');
		$form->tabela = 'usuario';
		$this->users->row($form);
		$data['content'] = row($form);
		$data['title'] = msg('ghost');
		$this->load->view('content',$data);
		
		$this -> load -> view("header/content_close", null);
		$this -> load -> view("header/footer", null);			
		}	
	function user_ghost($id=0,$chk='')
		{
			$chk2 = checkpost_link($id);
			if ($chk2 != $chk) {
				redirect(base_url('index.php/main'));
			}

			$this->load->model("users");
			$this->load->model("securities");
			
			$data = $this->users->le($id);
			$data['ghost'] = $_SESSION['id'];
			$data['ghost_name'] = $_SESSION['name'];
			$this->securities->security_set($data);
			
			redirect(base_url('index.php/main'));				
		}
	function ghost_exit()
		{
			if (isset($_SESSION['ghost']))
				{
				$id_ghost = $_SESSION['ghost'];
				$this->load->model("users");
				$this->load->model("securities");
			
				$data = $this->users->le($id_ghost);
				if (count($data) > 0)
					{
						$data['ghost'] = 0;
						$data['ghost_name'] = '';					
						$this->securities->security_set($data);
					}
				}
			redirect(base_url('index.php/main'));			
		}
}
?>
