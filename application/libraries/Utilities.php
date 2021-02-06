<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Utilities {
	public function __construct(){
		//parent::__construct();	
		@session_start();	
		date_default_timezone_set('Africa/Lagos');
	}
	
	private $classdiv = NULL;
	private $msg = NULL;

	public function custom_email_template($body,$to,$AppName,$company="default"){
		$CI =& get_instance();		
		$CI->load->library('session');
		
		//$u = $_SESSION['userDetails'];
		$companyname=$AppName;
		$imgsrc="<img src='".base_url('assets/logos/logo.png')."' width='60px' title='logo' />";
		$signature="";
		if($company!="default"){
			$companyname=$AppName;
			$usernames=$AppName;
			
			
			$imgsrc="";
				$signature.="
						<tr>
						  <td align='left'><hr></hr></td>
						</tr>
						<tr>
							<td align='left' style='font-family:Tahoma, Geneva, sans-serif;font-size:11px;color:grey'>
								This email was sent to ".$to." by ".$usernames."
							</td>
						</tr>
				";
	
		}//end of if email was sent via a user
		
		$custombody = "
<table align='center' style='width:100%;' cellpadding='5' cellspacing='5'>
   <tr>
	  <td style='background: #334353;background: -moz-linear-gradient(top, #334353 0%, #334353 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#334353), color-stop(100%,#334353));background: -webkit-linear-gradient(top, #334353 0%,#334353 100%);background: -o-linear-gradient(top, #334353 0%,#334353 100%);background: -ms-linear-gradient(top, #334353 0%,#334353 100%);background: linear-gradient(top, #334353 0%,#334353 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#334353', endColorstr='#334353',GradientType=0 );color:#FFFFFF;'><strong style='color:white'>".$companyname."</strong>
	  </td>
	</tr>
	<tr>
      <td align='center'>
      ".$imgsrc."
      </td>
	</tr>
	<tr>
      <td align='left'>
      ".nl2br($body)."
      </td>
	</tr>
	".$signature."
	<tr>
	  <td align='left' style='font-family:Tahoma, Geneva, sans-serif;font-size:11px;color:grey'>
	  	This email was sent to ".$to." 
		<br>
		Courtesy of ".$AppName." &copy; ".date('Y')."
		
	  </td>
	</tr>
</table>
	";
	//echo $custombody; exit;
		return($custombody);
	}	
}

/* End of file Utilities.php */