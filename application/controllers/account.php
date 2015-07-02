<?php
class Account extends CI_Controller
{
    function __construct()	{
        parent::__construct();
        $this->load->library('activatelib');
        $this->load->library('userlib');
    }

    function index($uid){
        $data['title'] = 'Activation';
        $data['info'] = "Bad Request";
        $link = $this->activatelib->get_link_by_uid($uid);
        if(strlen($link) == 32){
            $user = $this->userlib->get_user_info($uid);
            if($user){
                $this->activatelib->send_activation_email($user['users_email_address'], $link);
            }
            $data['info'] = "Activation Email Sent";
        }
        $this->load->view('templates/msgDisplay',$data);
    }
}
