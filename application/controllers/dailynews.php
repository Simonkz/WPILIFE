<?php
	class dailynews extends CI_Controller 
	{
		function __construct()
		{
			parent::__construct();
			$this->load->library('email');
			$this->load->library('parser');
		}
		
		function index()
		{
			$today = date('Y-m-d')." 21:00:00";
			$yesterday = date('Y-m-d',strtotime("-7 days"));
			$query = $this->db->query("SELECT * FROM `shop` WHERE shop_date BETWEEN ? AND ?", array($yesterday,$today));
			$shop_list="";
			foreach ($query->result() as $item)
			{
				$cover = substr_replace($item->shop_image_cover, '_small', -4, 0);
				$data=array(
					'link' => $item->shop_id,
					'cover'=> $cover,
					'price'=> $item->shop_price,
					'title'=> $item->shop_title,
				);
				$shop_list = $shop_list.$this->parser->parse('templates/dailynews_email/shop_item', $data, TRUE);
			}
			$data = array(
				'sell_list'  => $shop_list,
				'today'      => $today,
			);
			$this->sendDailyNewsEmail($shop_list);
			//$msg = array('title' => 'title', 'info'=>$info);
			//$this->load->view('templates/msgDisplay',$msg);
			//$this->send_to_person($shop_list, 'han0122@gmail.com');
			//$this->send_to_person($shop_list, 'kwang3@wpi.edu');
			//$this->send_to_person($shop_list, 'ahan0122@hotmail.com');
			//$this->send_to_person($shop_list, 'wpilife@gmail.com');
			$this->load->view('templates/send_daily_news',$data);
		}
		function test_email(){
			$this->email->from('dailynews@wpilife.org', 'WPILIFE');
			$this->email->to('kwang3@wpi.edu'); 
			$this->email->subject('This is | WPILIFE');
			$this->email->message("Hello this is a test");	
			$this->email->send();
			return $this->email->print_debugger();
		}
		function send_to_person($sell_list,$address){
			$this->email->from('dailynews@wpilife.org', 'WPILIFE');
			$this->email->to($address);
			$this->email->subject('Daily News  |  WPI Life');
			$data = array(
				'sell_list'  => $sell_list,
			);
			$message =  $this->parser->parse('templates/dailynews_email/dailynews_email_body',$data, TRUE);
			$this->email->message($message);
			$this->email->send();
		}
		function sendDailyNewsEmail($sell_list){
			$this->email->from('no-reply@wpilife.org', 'WPILIFE');
			$this->email->to('cssa@wpi.edu'); 
			$this->email->subject('WPILIFE 每日精选');
			$this->email->set_alt_message("This is an HTML email, please enable your client's support for HTML email to view the full message");
			$data = array(
				'today'		=>date('Y-m-d'),
				'sell_list' 	=> $sell_list,
				);
			$message = $this->parser->parse('templates/dailynews_email/dailynews_email_body', $data, TRUE);
			$this->email->message($message);	
			$this->email->send();
		}
	}
	
?>
