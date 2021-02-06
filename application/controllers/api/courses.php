<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Courses extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$userid = $json['userid'];
		$viewtype = $json['viewtype'];
		$where="";
		if($viewtype=="owner"){
			$where=" AND a.owner_id = '".$this->db->escape_str($userid)."' ";
		}
		$sql = "SELECT a.*,b.lastname, b.firstname, b.email,
				(SELECT c.uid FROM users_courses c WHERE c.cid=a.id AND c.uid=?
				AND c.approved = '1' LIMIT 1) as 'is_member'
				FROM courses a, users b
				WHERE a.owner_id = b.id ".$where." ORDER BY a.id DESC";
		$query = $this->db->query($sql,array($userid));
		if($query->num_rows()>0){
			$outputArray['results'] = $query->result_array();
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
}