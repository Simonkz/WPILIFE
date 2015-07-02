<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Activatelib
{

    public $CI = NULL;
    public function __construct()
    {
        $this->CI =& get_instance();
    }

    function send_activation_email($to_email, $link)
    {
        $this->load->library('parser');
        $this->email->from('no-reply@wpilife.org', 'WPILIFE');
        $this->email->to($to_email);
        $this->email->subject('Your Passcode Has Been Set | WPILIFE');

        $data = array(
            'email' 	=> $to_email,
            'link' 	=> base_url().'login/activeuser/'.$link,
            'year'		=> date('Y'),
            'baseUrl'	=> base_url(),
            'loginLink' => base_url() ."login/?account=".$to_email
        );
        $message = $this->parser->parse('templates/activationEmail', $data, TRUE);
        $this->email->message($message);
        $this->email->send();

    }

    function get_link_by_uid($uid){
        $link='';
        $q = $this->CI->db->get_where("active_link", array("user_id" => $uid, "type"=>0));
        if($q->num_rows()>0){
            $user = $q->row_array();
            $link = $user['link'];
        }
        return $link;
    }



}
