<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Coursefiles extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$userid = $json['userid'];
		$courseid = $json['courseid'];
		$viewtype = $json['viewtype'];
		
		$sql = "SELECT a.*
				FROM courses_files a
				WHERE a.cid = ? ORDER BY a.id DESC";
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