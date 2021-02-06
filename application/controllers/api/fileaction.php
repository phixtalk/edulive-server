<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fileaction extends CI_Controller {
	
	public function index(){
		$json = json_decode(file_get_contents('php://input'), true);

		$outputArray = array();
		
		$fileid = $json['fileid'];
		$filepath = $json['filepath']; 
		$action = $json['action'];
		
		if($action=="downloadfile"){

		}elseif($action=="deletefile"){
			$this->db->where('id', $fileid);
			if($this->db->delete('courses_files')){//delete from database
				unlink($filepath);//delete from file system
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		
		echo json_encode($outputArray);
	}
}