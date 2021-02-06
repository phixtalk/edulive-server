<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Newcourse extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
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
			   'owner_id' => $userid,
			   'caption' => $name,
			   'institution' => $institution,
			   'department' => $department,
			   'createdAt' => date("Y-m-d H:i:s"),
			   'updatedAt' => date("Y-m-d H:i:s")
			);
			if($this->db->insert('courses', $data)){
				//get the id of added course
				$uid = (int) $this->db->insert_id();
				//next make user a member of this course
				$data = array(
				   'uid' => $userid,
				   'cid' => $uid,
				   'approved' => '1',
				   'date_joined' => date("Y-m-d H:i:s")
				);
				$this->db->insert('users_courses', $data);
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		echo json_encode($outputArray);
	}
}