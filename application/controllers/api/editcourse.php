<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Editcourse extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$courseid = $json['courseid'];
		$name = $json['name'];
		$institution = $json['institution'];
		$department = $json['department']; 
		$userid = $json['userid'];
		
		$sql = "SELECT a.* FROM courses a WHERE a.owner_id = ? AND a.caption = ?";
		$query = $this->db->query($sql,array($userid,$name));
		
		if($query->num_rows()>0){//course has been created before
			$outputArray['status'] = 'exist';
		}else{
			$data = array(
			   'caption' => $name,
			   'institution' => $institution,
			   'department' => $department,
			   'updatedAt' => date("Y-m-d H:i:s")
			);
				
			$this->db->where('id', $courseid);
			$this->db->where('owner_id', $userid);
			if($this->db->update('courses', $data)){
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		echo json_encode($outputArray);
	}
}