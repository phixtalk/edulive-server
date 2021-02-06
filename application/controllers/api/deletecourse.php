<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Deletecourse extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$courseid = $json['courseid'];
		$userid = $json['userid'];
		$this->db->where('id', $courseid);
		$this->db->where('owner_id', $userid);
		if($this->db->delete('courses')){
			$outputArray['status'] = 'success';
			//delete also, all members of this courseid
			$this->db->where('cid', $courseid);
			$this->db->delete('users_courses');
		}else{
			$outputArray['status'] = 'failure';
		}
		echo json_encode($outputArray);
	}
}