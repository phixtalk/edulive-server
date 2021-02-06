<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pollaction extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$action = $json['action'];
		
		if($action=="newpoll"){
			$courseid = $json['courseid'];
			$coursename = $json['coursename'];
			$option1 = $json['option1'];
			$option2 = $json['option2'];
			$option3 = $json['option3'];
		
			$data = array(
			   'cid' => $courseid,
			   'question' => $coursename,
			   'option_1' => $option1,
			   'option_2' => $option2,
			   'option_3' => $option3,
			   'timestamp' => date("Y-m-d H:i:s")
			);
			if($this->db->insert('courses_polls', $data)){
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}elseif($action=="deletepoll"){
			$pollid = $json['pollid']; 		
			//first delete the poll id
			$this->db->where('id', $pollid);
			if($this->db->delete('courses_polls')){
				//also delete users polls
				$this->db->where('pid', $pollid);
				$this->db->delete('users_polls');
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}elseif($action=="pollvote"){
			$pollid = $json['pollid'];
			$userid = $json['userid'];
			$vote = $json['vote'];
			//first check if user has already voted before
			$this->db->where('uid', $userid);
			$this->db->where('pid', $pollid);
			$check = $this->db->get("users_polls",1);
			if($check->num_rows()>0){
				$outputArray['status'] = 'exist';
			}else{
				$data = array(
				   'uid' => $userid,
				   'pid' => $pollid,
				   'vote' => $vote,
				   'timestamp' => date("Y-m-d H:i:s")
				);
				if($this->db->insert('users_polls', $data)){
					$outputArray['status'] = 'success';
				}else{
					$outputArray['status'] = 'failure';
				}
			}
		}
		
		echo json_encode($outputArray);
	}
}