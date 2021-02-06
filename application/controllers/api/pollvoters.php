<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pollvoters extends CI_Controller {
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);
		$outputArray = array();
		$pollid = $json['pollid'];
		
		$sql = "SELECT a.*, CONCAT(b.lastname,' ', b.firstname) AS 'member'
				FROM users_polls a, users b
				WHERE a.pid = ? AND a.uid = b.id ORDER BY a.id DESC";
		$query = $this->db->query($sql,array($pollid));
		if($query->num_rows()>0){
			$outputArray['results'] = $query->result_array();
			$outputArray['status'] = 'success';
		}else{
			$outputArray['status'] = 'empty';
		}
		echo json_encode($outputArray);
	}
}