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
			$query = $this->db->query("SELECT * FROM `shop` WHERE shop_type='SELL' AND shop_date BETWEEN ? AND ? ORDER BY shop_date DESC", array($yesterday,$today));
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
			$query = $this->db->query("SELECT * FROM bbs WHERE bbs_time BETWEEN ? AND ? ORDER BY bbs_time DESC", array(date('Y-m-d',strtotime("-15 days")), $today));
			$msg = file_get_contents($_SERVER['DOCUMENT_ROOT']."/msg.txt");
			$data = array(
				'sell_list'  => $shop_list,
				'today'      => $today,
				'bbs_list' =>$query->result_array(),
				'msg'=>$msg
			);
			$query = $this->db->query("SELECT * FROM `shop` WHERE shop_type='BUY' AND shop_date BETWEEN ? AND ? ORDER BY shop_date DESC", array($yesterday,$today));
			$data["demand_list"] = $query->result_array();
			$this->sendDailyNewsEmail($data);
			$this->load->view('templates/dailynews_email/dailynews_email_body',$data);
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
		function sendDailyNewsEmail($data){
			$this->email->from('no-reply@wpilife.org', 'WPILIFE');
			$this->email->to('cssa@wpi.edu'); 
			$this->email->subject('WPILIFE 每日精选');
			$this->email->set_alt_message("This is an HTML email, please enable your client's support for HTML email to view the full message");
			$message = $this->parser->parse('templates/dailynews_email/dailynews_email_body', $data, TRUE);
			$this->email->message($message);	
			$this->email->send();
		}
	}
	
?>
