<?php

class Login extends CI_Controller 
{
	function __construct()
	{
 		parent::__construct();
		$this->load->database();
	}

	function index()
	{
		if($this->session->userdata('users_id') != null)
		{
			redirect('','refresh');
		}

		$data['title'] = "Login | WPILIFE";
		$data['account'] = $this->input->get("account");
		$data['ref'] = str_replace('logout', '', $this->input->get("ref"));
		$this->load->view('login',$data);
	}

	function submit()
	{
		$ref = $this->input->post("ref");
		$email = trim($this->input->post('users_email_address'));
		// generate password
		$salt = $this->config->item('encryption_key');
		$password = $this->input->post('users_password');
		$tmp = do_hash($password, 'md5');
		$passwordMD5 = do_hash($salt.$tmp, 'md5'); // MD5
		$temp=$this->users->login($email, $passwordMD5);
		if($temp != 0)
		{
			switch($temp){
				case 1:
					$data['title']="ERROR   |   WPILIFE";
					$data['info']="You are not activated!";
					$this->load->view("templates/msgDisplay",$data);
					break;
				case 2:
					echo "<script> alert ('Email or Password Wrong! = (');</script>";
					echo "<script> window.location.href = '".base_url()."login/?ref=".$ref."';</script>";
					break;
			}
		}
		else{
			redirect($ref,'refresh');
		}
	}


	function sendPasswordResetEmail($to_email, $hashStr)
	{
		$this->load->library('email');
		$this->load->library('parser');
		$this->email->from('no-reply@wpilife.org', 'WPILIFE');
		$this->email->to($to_email); 
		$this->email->subject('Your Passcode Reset Link | WPILIFE');

		$data = array(
			'email' 	=> $to_email,
			'year'		=> date('Y'),
			'baseUrl'	=> base_url(),
			'resetLink' => base_url() ."login/passwdReset/".$hashStr
			);
		$message = $this->parser->parse('templates/passwordResetEmail', $data, TRUE);
		$this->email->message($message);	
		$this->email->send();
		
	}

	function forgetPassword()
	{
		$data['title'] = "Password Recovery| WPILIFE";
		$this->load->view('base/forgetPassword',$data);
	}

	function passwordRecovery()
	{
		$email = $this->input->post('email');
		$email = trim($email);

		$today = date('Ymd');
		$randString = random_string('alnum', 8);
		$extraAuth = $email.do_hash($today, 'md5').$randString;
		$hashStr = do_hash($extraAuth, 'md5');

		$dataArray= array(
				'link'	=> $hashStr,
				'expire_date' => date('Y-m-d H:i:s',strtotime("+1 day")),
			);
		if($this->users->userPasswdInfoUpdate($dataArray, $email) == 1){
			$this->sendPasswordResetEmail($email, $hashStr);

			$data['title'] = "Password Reset Link | WPILIFE";
			$data['info'] = "New password reset link has been sent to your email, please have a check!<br/>Have fun :-)";
			$this->load->view('templates/msgDisplay',$data);
		} else {
			echo "<script>alert('No account for this email!');</script>";
			echo "<script>window.location.href = '".base_url()."login/forgetPassword/';</script>";
		}

		
	}

	function logout()
	{
		$this->session->sess_destroy();
		$data['title'] = "Logout | WPILIFE";
		$data['info'] = "Thank you!<br/> You are logout now!";
		$this->load->view('templates/msgDisplay',$data);
	}
	
	function sendPasswordRecoveryEmail($to_email, $password)
	{
		$this->load->library('parser');
		$this->load->library('email');
		$this->email->from('no-reply@wpilife.org', 'WPILIFE');
		$this->email->to($to_email); 
		$this->email->subject('Your Passcode has been reset | WPILIFE');

		$data = array(
			'email' 	=> $to_email,
			'password' 	=> $password,
			'year'		=> date('Y'),
			'baseUrl'	=> base_url(),
			'loginLink' => base_url() ."login/?account=".$to_email
			);
		$message = $this->parser->parse('templates/activationEmail', $data, TRUE);
		$this->email->message($message);	
		$this->email->send();
	}
	
	public function activeuser($link=''){
			$user_id=$this->users->finduseridbylink($link);		
			if($user_id>0){
				$query=$this->db->query("SELECT *
													FROM active_link
													WHERE link='".$link."'");
				$thislink=$query->row_array();
				$today=date('Y-m-d H:i:s');
				if(strtotime($today) < strtotime($thislink['expire_date'])){
					if ($thislink['type']==0){
						$this->db->query('UPDATE users SET users_activated=1 WHERE users_id='.$user_id); 
						if($this->db->affected_rows()>0)
						{ 
							$data['title']="Activation Successful! |  WPILIFE";
							$data['info']="This account is successfully activated!";
							$this->db->query("DELETE FROM active_link
																WHERE link='".$link."'");
						}
						else
						{
							$data['title']="Oops! |  WPILIFE";
							$data['info']="Oops! An error has happened (Update fail), please contact us if this problem shows again";
						}
					}
					else{
						$data['title']="Oops! |  WPILIFE";
						$data['info']="Oops! Wrong link type!";
					}
				}
				else{
					$data['title']="Oops! |  WPILIFE";
					$data['info']="Oops! This link is expired!";
				}
			}
			else{
				$data['title']="Oops! |  WPILIFE";
				$data['info']="It seems that this link is wrong".$user_id;
			} 
			$this->load->view('templates/msgDisplay',$data);
		} 

	function passwdReset($hashStr){
		$user_id=$this->users->finduseridbylink($hashStr);		
			if($user_id>0){
				$query=$this->db->query("SELECT *
													FROM active_link
													WHERE link='".$hashStr."'");
				$thislink=$query->row_array();
				$today=date('Y-m-d H:i:s');
				$data['title']='Password Reset';
				$data['info']='';
				if(strtotime($today) < strtotime($thislink['expire_date'])){
					if ($thislink['type']==1){
						$data['hashStr'] = $hashStr;
						//$data['email'] = $email;
						$data['user_id'] = $user_id;
					//	$this->db->query("DELETE FROM active_link
					//										WHERE link='".$hashStr."'");
						$this->load->view('base/forgetReset',$data);
						return;
					}
					else{
						$data['title']="Oops! |  WPILIFE";
						$data['info']="Oops! Wrong link type!";
					}
				}
				else{
					$data['title']="Oops! |  WPILIFE";
					$data['info']="Oops! This link is expired!";
				}
			}
			else{
				$data['title']="Oops! |  WPILIFE";
				$data['info']="It seems that this link is wrong".$user_id;
			} 
			$this->load->view('templates/msgDisplay',$data);
	}

	function reset(){
		$code = $this->input->post('code');
		$newPasswd = $this->input->post('newpasswd');
		$cfmPasswd = $this->input->post('cfmpasswd');

		if($newPasswd != $cfmPasswd){
			echo "<script>alert('Passwords are not the same!');</script>";
			echo "<script>window.location.href = '".base_url()."login/passwdReset/".$code."';</script>";
		} else {
			$user_id = $this->input->post('id', TRUE);
			//$email = $this->input->post('email');

			$salt = $this->config->item('encryption_key');
			$tmp = do_hash($newPasswd, 'md5'); 
			$passwordMD5 = do_hash($salt.$tmp, 'md5'); 

			$num=$this->users->userPasswordReset($passwordMD5, $user_id,$code);
			if($num==1){
				$data['title'] = "Password Reset Successfully | WPILIFE";
				$data['info'] = "Your password has been updated successfully!";
			}
			else{
				$data['title']="An Error has happened     |    WPILIFE";
				$data['info']="Oops! There's an error has happened!";
			}
			$this->load->view('templates/msgDisplay',$data);
		}

	}
}
?>
