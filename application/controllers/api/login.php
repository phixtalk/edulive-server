<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$email = $json['email'];
		$password = $json['password'];
		
		$field = "email";
		
		if($email!=""&&$password!=""){
			$this->db->where($field, $email);
			$this->db->where('password', sha1($password));
			//$this->db->select('id, name');
			$query = $this->db->get('users',1);
			if($query->num_rows()>0){
				$row = $query->row_array();
				$outputArray['status'] = 'success';
				$outputArray['userid'] = $row['id'];
				$outputArray['firstname'] = $row['firstname'];
				$outputArray['lastname'] = $row['lastname'];
				$outputArray['phone'] = $row['phone'];
			}else{
				$outputArray['status'] = 'failure';
			}
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
}