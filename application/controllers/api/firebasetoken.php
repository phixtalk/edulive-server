<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Firebasetoken extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		
		$user_id = $json['userid'];
		$token = $json['token'];
		$data = array(
		   'firebasetoken' => $token
		);
		$this->db->where('id', $user_id);
		if($this->db->update('users', $data)){
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'failure';
		}
		echo json_encode($outputArray);
	}
}