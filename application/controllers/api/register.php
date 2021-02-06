<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$firstname = $json['firstname'];
		$lastname = $json['lastname'];
		$email = $json['email']; 
		$phone = $json['phone'];
		$password = $json['password'];
		$firebasetoken = "";//$json['firebasetoken'];
		
		$this->load->library('email');
		
		if($email!=""&&$password!=""&&$firstname!=""&&$lastname!=""){
			$this->db->where("email", $email); 
			$query = $this->db->get('users',1);
			if($query->num_rows()>0){
				//$outputArray['error'] = '2';
				$outputArray['status'] = 'exist';
			}else{
				$data = array(
				   'firstname' => $firstname,
				   'lastname' => $lastname,
				   'email' => $email,
				   'phone' => $phone,
				   'password' => sha1($password),
				   'firebasetoken' => $firebasetoken,
				   'createdAt' => date("Y-m-d H:i:s"),
				   'updatedAt' => date("Y-m-d H:i:s")
				);
				$AppName="Edulive";
				if($this->db->insert('users', $data)){
					//SEND USER AN EMAIL IF EMAIL IS PRESENT
					/*
					$body ="Welcome onboard ".strtolower($usernames).". We are very please to have you<br><br>Have fun using this app...<br>From the ".$AppName." Team!";
					$message = $this->utilities->custom_email_template($body,$email,$AppName);
					@$this->email->from('info@'.strtolower($AppName).'.org', $AppName);
					@$this->email->to($email);
					
					@$this->email->cc("info@edulive.org");
					
					@$this->email->subject("New Signup");
					@$this->email->message($message);				
					@$this->email->send();
					*/
					
					$sid = (string) $this->db->insert_id();
					$outputArray['status'] = 'success';
					$outputArray['userid'] =  $sid;
					
				}else{
					$outputArray['status'] = 'failure';
				}
			}
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
}