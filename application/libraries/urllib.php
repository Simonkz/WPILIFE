<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/**
 * The library used to find urls in a string.
 * @author zhshr
 *
 */
 
class urllib
{

	public $CI = NULL;
	public function __construct()
	{	
		$this->CI =& get_instance();
	}
	
/*	public function filter($str){
		preg_match("/[a-z0-9]+.[a-z0-9]+.cn/", $str,$matches);
		$str .= print_r($matches, true);
		return $str;
	}
*/
	public function filter($str){
		$temp = $str;
		$rootname = "((cn)|(com))";
		//lefsfevdehuoesfe.letv17sz.cn/view.asp?type=19&id=vip078
// 		$pattern = "/((http|https):\/\/)?(([a-z0-9\-]+\.)+" 					//非根域名部分	lefsfevdehuoesfe.letv17sz.
// 						. $rootname								//根域名部分		.cn
// 						. ")\/?"										//可选/
// 						. "([a-z0-9\-]*\/)*"							//路径
// 						. "([a-z0-9\-\=\_]+\.?[a-z0-9\-\=\_]*\/*)?"		//文件名部分		view.asp
// 						. "\??([a-z0-9\-\_]*(=[a-z0-9\-\_]*)?(&amp;)?)*"
// 						. '|<a.*a>'
// 						. "/i";											//ending
		
		$pattern = "/((http|https):\/\/)?(([\w\-]+\.)+" 					//非根域名部分	lefsfevdehuoesfe.letv17sz.
						. $rootname								//根域名部分		.cn
						. ")[\025-\177]*"										//可选/						
						. '|<a.*a>'
						. "/i";											//ending
		
		preg_match_all($pattern, $temp,$matches, PREG_SET_ORDER | PREG_OFFSET_CAPTURE);
		/*
		 * $matches
		 * [0]	whole link
		 * [1]	hostname
		 */
		$new = "";
		$pointer = 0;
		$suffix = "";
		$beforelink = "<div style=\"background-color: #FFD2AC; width: 80%; margin: auto; text-align: center;-webkit-border-radius: 10px;-moz-border-radius: 10px;border-radius: 10px;\">".
								"<div style=\"float:left; margin: 5px\"><img src=\"" . base_url() . "/images/warning-icon-hi.png\" style=\"height:30px\"></div>" . 
								"WPI CSSA提醒您：外部链接，谨防诈骗</br >";
		$afterlink = "</div>";
		foreach ($matches as $match){
			$suffix .= "</br > Found URL:\t" . $match[0][0] . "</br >Hostname:\t";
			if (substr($match[0][0],0,1)=="<"){
				preg_match_all('/href=(["\'])(.*?)(["\'])/i', $match[0][0], $extract, PREG_SET_ORDER | PREG_OFFSET_CAPTURE);
//				$str .= print_r($extract, true);
				$suffix .= $extract[0][2][0] . "</br >";
			}else{
				$suffix .= $match[3][0] . "</br >";
			}
			$new .= substr($str, $pointer, $match[0][1] - $pointer) . $beforelink . $match[0][0] . $afterlink;
//			$suffix .= $pointer . " " . ($match[0][1] - $pointer) . " " . strlen($match[0][0]) . "</br>";
//			$suffix .= substr($str, $pointer, $match[0][1] - $pointer) . "</br >" . $match[0][0] . "</br >";
			$pointer = $match[0][1] + strlen($match[0][0]);
		}
//test pattern
//		preg_match_all("/\??([a-z0-9\-\_]+(=[a-z0-9\-\_]*)?(&amp;)?)*|<a.*a>/i", "http://www.amazon.com/Canon-imageCLASS-LBP6000-Compact-Printer/dp/B004BDMP8M/ref=sr_1_2?ie=UTF8&amp;qid=1438537514&amp;sr=8-2&amp;keywords=lbp6000", $m, PREG_SET_ORDER | PREG_OFFSET_CAPTURE);
		
//		$new .= "</br ><pre>" . $pattern. "</pre></br >";
//		$new .= "<pre>" . print_r($m, true) . "</pre>";
//		$new .= "<pre>" . print_r($matches, true) . "</pre>";
//		$new .= $suffix;
		if($new=='') return $str;
		else return $new;
	}
	// http://ellislab.com/codeigniter/user-guide/helpers/captcha_helper.html
}
?>
