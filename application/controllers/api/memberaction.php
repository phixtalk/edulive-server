<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Memberaction extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$action = $json['action'];
		$courseid = $json['courseid'];
		$memberid = $json['memberid'];
		$coursename = $json['coursename'];
		if($action=="approve"){
			$data = array(
			   'approved' => '1'
			);
			$this->db->where('cid', $courseid);
			$this->db->where('uid', $memberid);
			if($this->db->update('users_courses', $data)){
				$outputArray['status'] = 'success';
				
				$msg ="Your request to join ".$coursename." has been approved by the admin.\nThank you.";
				$news = array(
				   'uid' => $memberid,
				   'message' => $msg,
				   'createdon' => date("Y-m-d H:i:s")
				);
				$this->db->insert('users_news', $news);
				
			}else{
				$outputArray['status'] = 'failure';
			}
		}elseif($action=="decline" || $action=="delete"){
			$this->db->where('cid', $courseid);
			$this->db->where('uid', $memberid);
			if($this->db->delete('users_courses')){
				$outputArray['status'] = 'success';
				
				$msg ="Sorry, your request to join ".$coursename." has been declined by the admin.\nThank you.";
				$news = array(
				   'uid' => $memberid,
				   'message' => $msg,
				   'createdon' => date("Y-m-d H:i:s")
				);
				$this->db->insert('users_news', $news);
				
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		echo json_encode($outputArray);
	}
}