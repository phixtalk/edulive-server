<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Announceaction extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$coursename = $json['coursename'];
		$description = $json['description'];
		$courseid = $json['courseid']; 
		$action = $json['action'];
		$userid = $json['userid'];
		
		if($action=="newcourse"){
			$data = array(
			   'cid' => $courseid,
			   'name' => $coursename,
			   'text' => $description,
			   'timestamp' => date("Y-m-d H:i:s")
			);
			if($this->db->insert('courses_announcements', $data)){
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}elseif($action=="deletecourse"){
			$this->db->where('id', $courseid);
			if($this->db->delete('courses_announcements')){
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		
		echo json_encode($outputArray);
	}
}