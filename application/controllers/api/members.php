<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Members extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$userid = $json['userid'];
		$courseid = $json['courseid'];
		$viewtype = $json['viewtype'];
		
		$sql = "SELECT a.*,b.lastname, b.firstname, b.email
				FROM users_courses a, users b
				WHERE a.cid = ? AND a.uid = b.id
				AND a.approved = '".($viewtype=="active"?"1":"0")."' 
				ORDER BY a.id DESC";
		$query = $this->db->query($sql,array($courseid));
		if($query->num_rows()>0){
			$outputArray['results'] = $query->result_array();
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
}