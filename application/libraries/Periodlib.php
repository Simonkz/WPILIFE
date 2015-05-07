<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/**
 * The library used to determine time period of semesters.
 * Such as 14f->2014-05-01
 * @author zhshr
 *
 */
 
class periodlib
{

	public $CI = NULL;
	public function __construct()
	{	
		$this->CI =& get_instance();
	}

	// http://ellislab.com/codeigniter/user-guide/helpers/captcha_helper.html
	public function getDateFromPeriod($period){
		$period = strtoupper($period);
		$year = intval(substr($period, 0,2));
		$semester = substr($period,2,1);
		if (strtoupper($semester=="F")){
			$result = '20' . $year .  '-05-01';
		}else{
			$result = "20" . ($year-1) . "-10-01";
		}
		return strtotime($result);
	}
	
	public function getNextDateFromPeriod($period){
		$period = strtoupper($period);
		$year = intval(substr($period, 0,2));
		$semester = substr($period,2,1);
		if (strtoupper($semester)=="F"){
			//increasing to spring, same year			
			$result = "20" . $year . "-10-01";
		}else{
			//increasing to fall, next year
			$result = "20" . ($year) . "-05-01";
		}
		return strtotime($result);
	}
	public function getCurrentPeriod(){
		$current = getdate();
		
		$result = substr($current['year'],2,2);
		if (($current['mon']<5) or ($current['mon']>=10)){
			$result .= 'S';
		}else{
			$result .= 'F';
		}
		return $result;
		
	}
	public function periodtonum($period){
		$year = substr($period,0,2);
		$semester = strtoupper(substr($period,2,1));
		$result = 0 + ($year - 14) * 2 + ($semester=='S'?-1:0);
		return $result;
	}
	public function numtoperiod($num){
		$year = ceil($num/2);
		$result = $year + 14;
		if ($num-$year*2==0){
			$result .= 'F';
		}else{
			$result .= 'S';
		}
		return $result;
	}
}
?>
