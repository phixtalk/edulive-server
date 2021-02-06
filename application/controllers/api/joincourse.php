<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Joincourse extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$this->load->library('email');
		$courseid = $json['courseid'];
		$coursename = $json['coursename'];
		$userid = $json['userid'];
		$ownerid = $json['ownerid'];
		$username = $json['username'];
		$email = $json['email'];
		//first check if user has sent request before, or is a member
		$this->db->where('uid', $userid); 
		$this->db->where('cid', $courseid);
		$this->db->select('approved');
		$query = $this->db->get('users_courses',1);
		if($query->num_rows()>0){
			$row = $query->row_array();
			if($row['approved']=="1"){//user is already a member
				$outputArray['status'] = 'exist';
			}else{
				$outputArray['status'] = 'pending';
			}
		}else{
			$data = array(
			   'uid' => $userid,
			   'cid' => $courseid,
			   'approved' => '0',
			   'date_joined' => date("Y-m-d H:i:s")
			);
			$AppName="Edulive";
			if($this->db->insert('users_courses', $data)){
				$outputArray['status'] = 'success';
				$msg =$username." just sent a request to join your course: ".$coursename.".\n Please respond to his request by accepting or declining it.\nThank you.";
				$news = array(
				   'uid' => $ownerid,
				   'message' => $msg,
				   'createdon' => date("Y-m-d H:i:s")
				);
				$this->db->insert('users_news', $news);
					
				$AppName="Edulive";
				//send email notification to course admin
				/*
				$body ="Hello<br>".$username." just sent a request to join your course: ".$coursename.".<br>You can launch the app to accept or decline this request.<br>Thank you.";
				$message = $this->utilities->custom_email_template($body,$email,$AppName);
				@$this->email->from('info@'.strtolower($AppName).'.com', $AppName);
				@$this->email->to($email);
				@$this->email->subject("New Course Request");
				@$this->email->message($message);				
				@$this->email->send();
				*/
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		
		echo json_encode($outputArray);
	}
}