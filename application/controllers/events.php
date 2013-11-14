<?php

class Events extends CI_Controller 
{
               
	function __construct()
	{
 		parent::__construct();
 		$this->load->library('Karaoke');
 		$this->load->helper('form');
	}	
	function index()
	{	
		$data['singers'] = $this->karaoke->get_distinct_singerID_with_vote_count();
		//var_dump($data['singers']);
		$this->load->view('events/karaoke',$data);
		
	}
	
	function singerInfo($singerID = 0)
	{
		
		if($singerID < 1)
		{
			redirect('events/','refresh');
		}
		else
		{
			$data['singer'] = $this->karaoke->get_singer_info($singerID);
			if($data['singer'])
			{
				//var_dump($data['singer']);
				$data['count'] = $this->karaoke->get_voting_count($singerID);
				if($this->session->userdata('users_id') != null)
				{
					$voteID = $this->session->userdata('users_id');
					$data['IsVotedToday'] = $this->karaoke->Is_voted_for_this_singer_today($voteID, $singerID);
					$timeLeft = 3 - $this->karaoke->times_voting_today($voteID);
					$data['remain'] = "<br/><p>Voting times left of you: " . $timeLeft . "</p>";
				}
				
				$this->load->view('events/personalDes',$data);
			}
			else
			{
				redirect('events/','refresh');
			}
			
		}
		
	}

	function voting()
	{
		$voteID = $this->session->userdata('users_id');
		$singerID = $this->input->post('singerID');
		if($voteID != null && $singerID != null && $this->karaoke->times_voting_today($voteID) < 3)
		{
			
			var_dump($voteID);
			if($this->karaoke->Is_voted_for_this_singer_today($voteID, $singerID) == false)
			{

			}
			//'blogs_date' 	=> date("Y-m-d H:i:s"),
			/*
			$dataArray = array(
						'blogs_title' 	=> $this->input->post('blogs_title', TRUE),
						'blogs_content' => $this->input->post('content', TRUE),
						'blogs_year'	=> date("Y"),
						'blogs_month'	=> date("F"),
						'blogs_day'		=> date("d"),
						'date' 	=> date("Y-m-d"),
							);
							*/ 
			var_dump($this->karaoke->times_voting_today($voteID));
		}
		else
		{
			redirect('events/','refresh');
		}

	}
	
}
?>