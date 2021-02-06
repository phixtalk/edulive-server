<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Polls extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$userid = $json['userid'];
		$courseid = $json['courseid'];
		$viewtype = $json['viewtype'];
		
		$sql = "SELECT a.*,
				
				(SELECT COUNT(b.id) FROM users_polls b WHERE b.pid=a.id
				AND b.vote=a.option_1) as count_a,
				(SELECT COUNT(c.id) FROM users_polls c WHERE c.pid=a.id
				AND c.vote=a.option_2) as count_b,
				(SELECT COUNT(d.id) FROM users_polls d WHERE d.pid=a.id
				AND d.vote=a.option_3) as count_c
				
				FROM courses_polls a
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