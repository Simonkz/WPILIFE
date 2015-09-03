<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Slidelib
{

	public $CI = NULL;
	public function __construct(){	
		$this->CI =& get_instance();
	}


	function getSlides(){

		$imageType = array("jpg", "png", "gif");
		$htmlOutput = '';

		$din = $_SERVER['DOCUMENT_ROOT'].'/images/slides/';

		if ($handle = opendir($din)) {

			// loop over the directory. 
			while (false !== ($file = readdir($handle))) {
				if ($file[0] != "." ) {
					$ext = strtolower(array_pop(explode('.',$file)));
					$txtFile = str_replace($ext,'txt',$file); // Potential Bug, fix later  if file name="jpgslide1.jpg" ----> "txtslide1.txt"
					$linkFile = str_replace($ext,'link',$file); // Potential Bug
					if(in_array($ext, $imageType)){
						$htmlOutput .= '<article class="ls-layer" style="slidedelay: 7000;">';
						if(file_exists($din.$linkFile)){
							$link = file_get_contents($din.$linkFile, NULL, NULL, 0, 60);
							$htmlOutput .= '<a class="ls-bg" href="'.$link.'" > <img src="images/slides/'.$file.'" alt="" /> </a>';
						}
						else{
							$htmlOutput .= '<img src="images/slides/'.$file.'" class="ls-bg" alt="" />';
						}
						//if(file_exists($din.$linkFile)){$htmlOutput .= '</a>';}
						if(file_exists($din.$txtFile)){
							$txt = file_get_contents($din.$txtFile,NULL, NULL, 0, 60);
							if($txt){
								if(rand(1, 77) % 2 == 1) $left = 40 ; else  $left = 756;
								$htmlOutput .= '<h3 class="ls-s1 caption-transparent" style="top:200px; left:'.$left.'px;">'.$txt.'</h3>';
							}
						}
						$htmlOutput .= '</article>';
					} else {
						
					}
					
					
				}
				
			}
			closedir($handle);
			return $htmlOutput;

		} else 	{
			return false;
		}
	
	}
	
}
?>
