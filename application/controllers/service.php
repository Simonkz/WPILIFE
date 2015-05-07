<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Service extends CI_Controller {
	function __construct() {
 		parent::__construct();
 		$this->load->library('Periodlib');	
	}

	public function index() {
		
	}

	public function airportPicker(){
		if($this->session->userdata('users_id')==null){
			$data['title'] = "Airport Pickup  | CSSA";
			$data['info'] = "You should <a href='http://www.wpilife.org/login'>login</a> first!";
			$this->load->view('templates/msgDisplay',$data);
			return;
		}
		else{
			$period = $this->periodlib->getCurrentPeriod();
			$history=self::checkexistance($this->session->userdata('users_id'));
			if ($history){
				$history = $this->filterbydate($history->result(), $this->periodlib->getDateFromPeriod($period),
						$this->periodlib->getNextDateFromPeriod($period));
			}			
			if(!$history){
				$data['modify']=false;
				$this->load->view('flight_add',$data);
			}
			else{
// 				$data['title']='Error    |    WPI Life';
// 				$data['info']='It seems that you have been already submitted a pick up information. If you want to change it, please contact <a href=mailto:wpilife@gmail.com"> wpilife@gmail.com </a>';
// 				$this->load->view('templates/msgDisplay',$data);
// 				
				$data['flight'] = $history[0];
				$data['modify'] = true;
				$this->load->view('flight_add',$data);
			}
		}
		
	}
	
	public function showpickup(){
		if ( $this->input->get('period')==null){
			$data['period'] = $this->periodlib->getCurrentPeriod();
		}else{
			$data['period'] = $this->input->get('period');
		}
		
		if($this->session->userdata('users_id')==null){
			$data['title'] = "Airport Pickup  | CSSA";
			$data['info'] = "You should <a href='http://wpilife.org/login?ref=http://wpilife.org/service/showpickup'>login</a> first!";
			$this->load->view('templates/msgDisplay',$data);
			return;
		}
		$query=$this->db->query("select * from cssa_manager_list where user_id=".$this->session->userdata('users_id'));
		if(!$query->num_rows){
			$data['title'] = "Airport Pickup  | CSSA";
			$data['info'] = "Err: No Permission";
			$this->load->view('templates/msgDisplay',$data);
		}
		else{
			$query=$this->db->query("select * from users join flight_info where users.users_id=flight_info.user_id");
			$data['results']=$query->result();
			$data['date_start'] = $this->periodlib->getDateFromPeriod($data['period']);
			$data['date_end'] = $this->periodlib->getNextDateFromPeriod($data['period']);
			$data['results'] = $this->filterbydate($data['results'],$data['date_start'],$data['date_end']);
			$this->load->view("viewflight.php",$data);
		}
	}
	
	public function addflightinfo(){
		if(!$this->input->post('agree')){
			$data['title']='Error     |     WPI Life';
			$data['info']='You need to agree the policy';
			$this->load->view('templates/msgDisplay',$data);
			return;
		}
		$data=array(
			'airlines'=>$this->input->post('airline'),
			'flight_num'=>$this->input->post('flight_num'),
			'arrival_date'=>date('Y-m-d',strtotime($this->input->post('date'))),
			'arrival_time'=>$this->input->post('time'),
			'contact'=>$this->input->post('contact'),
			'luggage'=>$this->input->post('luggage'),
			'user_id' => $this->session->userdata('users_id')
		);
		switch ($this->input->post('update')){
			case 'Update':
				$this->db->where('user_id',$data['user_id']);
				$this->db->where('f_id',$this->input->post('f_id'));
				$this->db->update('flight_info',$data);
				break;
			case 'Submit':
				$this->db->insert('flight_info',$data);
				break;
		}
		$info['title']='Success     |    WPI Life';
		$info['info']='Your flight information has been successfully saved';
		$this->load->view('templates/msgDisplay',$info);
	}
	
	public function showhistory(){
		$data['info']="showhistory";
		$this->load->view('templates/msgDisplay',$data);
	}
	
	private function checkexistance($users_id){
		$this->db->select('*');
		$this->db->where("user_id",$users_id);
		$query=$this->db->get('flight_info');
		if($query->num_rows()>0) {
			return $query;
		}
		else{
			return null;
		}
	} 
	private function filterbydate($data,$start,$end){
		$result = array();
		foreach ($data as $record){
			$date =  strtotime($record->arrival_date);
			
			if (($date>$start) && ($date<$end)){
				array_push($result,$record);
			}
		}
		if ($result==array()){
			return null;
		}else{
			return($result);
		}
		
	}
	public function tmpHouse(){
		$data['title'] = "Temporary Residence | CSSA";
		$data['info'] = "The Temporary Residence Page is Under Construction!";
		$this->load->view('templates/msgDisplay',$data);
	}

}
?>