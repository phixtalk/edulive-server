<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Notifications extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$userid = $json['userid'];
		$sql = "SELECT a.*,CONCAT(b.lastname,' ', b.firstname) as 'member'
				FROM users_news a, users b
				WHERE a.uid = b.id AND a.uid = ? ORDER BY a.id DESC";
		$query = $this->db->query($sql,array($userid));
		if($query->num_rows()>0){
			$outputArray['results'] = $query->result_array();
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
	public function read(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$nid = $json['nid'];
		$data = array(
		   'isRead' => 1
		);
		$this->db->where('id', $nid);
		if($this->db->update('users_news', $data)){
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'failure';
		}
		echo json_encode($outputArray);
	}
	public function counter(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$uid = $json['uid'];
		$this->db->where('uid', $uid);
		$this->db->where('isRead', 0);
		$this->db->from('users_news');
		$outputArray['counter'] = $this->db->count_all_results();
		echo json_encode($outputArray);
	}
}