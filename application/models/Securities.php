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

function perfil($tp='xxx') {
	if ((isset($_SESSION['id'])) and (strlen($_SESSION['id']) > 0)) {
		$chk1 = trim(md5($_SESSION['id'] . $_SESSION['name'] . $_SESSION['badge'] . date("Ymd")));
		$chk2 = trim($_SESSION['checksun']);
		if ($chk1 == $chk2) {
			$perfil = $_SESSION['perfil'];
			if (strpos($perfil,$tp)) {
				return (1);
			} else {
				return (0);
			}
		}
	} else {
		return (0);
	}
}

class securities extends CI_model {

	function security() {
		if ((isset($_SESSION['id'])) and (strlen($_SESSION['id']) > 0)) {
			$chk1 = trim(md5($_SESSION['id'] . $_SESSION['name'] . $_SESSION['badge'] . date("Ymd")));
			$chk2 = trim($_SESSION['checksun']);
			if ((!isset($_SESSION['checksun'])) or ($chk1 != $chk2)) {
				redirect(base_url('index.php/main/login'));
			}
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
		$chk = md5($rlt['id_us'] . $rlt['us_nome'] . $rlt['us_cracha'] . date("Ymd"));
		$sec = array('id' => $rlt['id_us'], 'name' => $rlt['us_nome'], 'badge' => $rlt['us_cracha'], 'instituition' => $rlt['us_instituition'], 'email' => $rlt['us_email'], 'perfil' => $rlt['us_perfil'], 'checksun' => $chk);
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
