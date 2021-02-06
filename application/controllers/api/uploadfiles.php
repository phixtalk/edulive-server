<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Uploadfiles extends CI_Controller {
	public function index(){
		$userid=$this->input->get_post('userid');
		$ftitle=$this->input->get_post('ftitle');
		$filedescribe=$this->input->get_post('filedescribe');
		$ftype=$this->input->get_post('ftype');
		$courseid=$this->input->get_post('courseid');
		$base_url=$this->input->get_post('base_url');//get base_url
		$filename="";
		if(isset($_FILES['userfile']['name'])){//if any media file was uploaded
			$filename = $userid.sha1(date("Ymdhis")).".".$this->get_extension($_FILES['userfile']['name']);	
		}
		$outputArray = array();
		$upload_path = 'assets/uploads';
		$file_path = $upload_path."/".$filename;
		
		if ($_FILES["userfile"]["error"] > 0) {
			$outputArray['status'] = $_FILES["file"]["error"];
		} else {
			if(move_uploaded_file ($_FILES['userfile']['tmp_name'], $file_path)){
				//next inside values to database
				$data = array(
				   'cid' => $courseid,
				   'name' => $ftitle,
				   'description'=>$filedescribe,
				   'filedir' => $file_path,
				   'filetype' => $ftype,
				   'timestamp' => date("Y-m-d H:i:s")
				);
				$this->db->insert('courses_files', $data);
				
				$outputArray['status'] = 'success';
			}else{
				$outputArray['status'] = 'failure';
			}
		}
		echo json_encode($outputArray);
	}
	public function get_extension($str) {
		 $i = strrpos($str,".");
		 if (!$i) { return ""; }
		 $l = strlen($str) - $i;
		 $ext = substr($str,$i+1,$l);
		 return $ext;
	}
}    
?>