<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Profileupdate extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$firstname = $json['firstname'];
		$lastname = $json['lastname'];
		$tag = $json['tag'];
		$email = $json['email'];
		$password = sha1($json['new_password']);
		
		if($tag=="update_password"){
			$data = array(
			   "password" => $password
			);			
		}else{//for name update
			$data = array(
			   "firstname" => $firstname,
			   "lastname" => $lastname
			);
		}
		
		$this->db->where('email', $email);
		if($this->db->update('users', $data)){
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'failure';
		}
		echo json_encode($outputArray);
	}
}