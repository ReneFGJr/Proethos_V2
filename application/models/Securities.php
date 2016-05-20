<?php
/**
 * CodeIgniter Form Helpers
 *
 * @package		CodeIgniter
 * @subpackage	Helpers
 * @category	Helpers
 * @author		Rene F. Gabriel Junior <renefgj@gmail.com>
 * @link		http://www.sisdoc.com.br/CodIgniter
 * @version		v0.16.16
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class securities extends CI_model {

	function perfil() {
		return (1);
	}

	function security() {
		if ((isset($_SESSION['id'])) and (strlen($_SESSION['id']) > 0)) {
			return ('');
		} else {
			redirect(base_url('index.php/main/login'));
		}
	}

	function logout() {
		$sec = array('id' => '', 'name' => '', 'badge' => '', 'instituition' => '', 'email' => '');
		$this -> session -> set_userdata($sec);
		redirect(base_url('index.php/main'));
	}

	function security_set($rlt) {
		$sec = array('id' => $rlt['id_us'], 'name' => $rlt['us_nome'], 'badge' => $rlt['us_cracha'], 'instituition' => $rlt['us_instituition'], 'email' => $rlt['us_email']);
		$this -> session -> set_userdata($sec);
		return ('');
	}

	function login_valid($login, $pass) {
		$sx = '';
		if ((strlen($login) > 0) and (strlen($pass) > 0)) {
			$sql = "select * from usuario where us_email = '$login' ";
			$rlt = $this -> db -> query($sql);
			$rlt = $rlt -> result_array();

			if (count($rlt) > 0) {
				$line = $rlt[0];

				if (trim($line['us_senha']) == trim($pass)) {
					$this -> security_set($line);
					redirect(base_url('index.php/main'));
				}
			}
		}
		if (strlen($login) > 0) {
			$sx = msg('login_error');
		}

		return ($sx);
	}

}
?>
