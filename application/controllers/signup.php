<?php

class Signup extends CI_Controller 
{
               
	function __construct()
	{
 		parent::__construct();
		$this->load->library('captchalib');
		$this->load->library('email');
		$this->load->library('parser');
	}	
	function index()
	{	
		$data['title'] = "Sign Up | WPILIFE";
		$data['captcha'] = $this->captchalib->generateCaptchaCode();
		$this->session->set_userdata('captcha', $data['captcha']['word']);
		$this->load->view('signup',$data);
	}

	function submit()
	{
		$salt = $this->config->item('encryption_key');
		$password = $this->input->post('users_password');
		$cfm_pwd = $this->input->post('cfm_users_password');
		if($password != $cfm_pwd) {
			$data['title']='Error   |   WPILIFE';
			$data['info'] = 'Password does not match!';
			$this->load->view('templates/msgDisplay',$data);
			return;
		}
		$tmp = do_hash($password, 'md5'); 
		$passwordMD5 = do_hash($salt.$tmp, 'md5'); 

		// add this tuple into database
		$captcha =intval(trim($this->input->post('captcha')));
		if($captcha == $this->session->userdata('captcha'))
		{
			$email = trim($this->input->post('users_email_address'));
			if($this->isEmailValid($email))
			{
				$userDataArray = array(
						'users_email_address' 	=> $email,
						'users_firstname' 		=> $this->input->post('users_firstname'),
						'users_lastname' 		=> $this->input->post('users_lastname'),
						'users_password' 		=> $passwordMD5,
						'users_activated' 	=> 0,
						);
				$link=$this->users->addNewUser($userDataArray);
				if(strlen($link)==32){
					// send passcode to costomer
					$this->sendActivationEmail($email,base_url().'login/activeuser/'.$link);
					$data['title'] = "Sign Up successfully | WPILIFE";
					$data['info'] = "Succeed<br/>An e-mail contains active link has been sent to your email<br/>Mailserver is down: In case you can't receive the email , please write to <a href='mailto:kwang3@wpi.edu'>me</a> with your email and name<br/>如果没有收到邮件，请<a href='mailto:kwang3@wpi.edu'>点此处</a>告诉我们你的姓名和邮箱，我们会为您手动激活";
				}
				else{
					$data['title']="Oops   |     WPILIFE";
					$data['info']="An Error has happened, if this problem shows again, please contact us";
				}
			}
			else
			{
				$data['title'] = "Sign Up failed | WPILIFE";
				$data['info'] = "Failed<br/>Email is not valid <br/>Or<br/> you have registered before!";
			} 
		}
		else
		{
			$data['title'] = "Sign Up failed | WPILIFE";
			$data['info'] = "Failed<br/>Captcha code is wrong!";
		}
		$this->session->unset_userdata('captcha');

		$this->load->view('templates/msgDisplay',$data);
		
	}

	function isEmailValid($email)
	{
		$this->load->helper('email');
		$email_subfix = explode("@", $email);

		//check whether it is a wpi email address
		if(isset($email_subfix[1]) )//&& $email_subfix[1] == 'wpi.edu')
		{
			if (valid_email($email) && !$this->users->isEmailDuplicated($email))
			{
				return true;
			}
		}
		return false;
	}

	function sendActivationEmail($to_email, $password)
	{
		$this->load->library('parser');
		$this->email->from('no-reply@wpilife.org', 'WPILIFE');
		$this->email->to($to_email); 
		$this->email->subject('Your Passcode Has Been Set | WPILIFE');

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
		
} 
?>
