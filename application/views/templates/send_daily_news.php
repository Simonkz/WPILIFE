<HTML> 
<html lang="en">
<head>
	<meta charset="utf-8">
	<tittle>WPILIFE 每日精选 </tittle>
	<style>
		.shopblock{
			left: 20px;
			top: 0px;
			transform: translate(0px, 0px);
			width: 200px;
			float: left;
			display: inline;
			margin-left: 10px;
			margin-right: 10px;
		}
		.shopblock img{
			height: auto;
			max-width: 100%;
			border: 1px solid #eee;
			border-bottom: 0;
		}
		.shopblock figure{
			margin: 0;
			padding: 0;
			border: 0;
			font-size: inherit;
			font: inherit;
			vertical-align: baseline;
		}
		.shopitem{
			margin: 10px 0;
			display: block;
			background-color: #fff;
		}
		.shopitem figcaption{
			background-color: #f4f4f4;
			box-shadow: inset 0px -1px 0px 0px rgba(0,0,0, 0.07);
			border-radius: 0 0 2px 2px;
			border-color: #e8e8e8;
			padding: 14px 10px 19px 10px;
			border-top: 5px solid #e5e5e5;
			text-align: center;
		}
		.shopitem span{
			color: #666;
			font-size: 13px;
			font-weight: 300;
			display: block;
			margin: 0 0 10px 0;
		}
		.shopitem a{
			text-decoration: none;
			outline: 0;
			-webkit-transition: color 0.1s ease-in-out;
			margin: 0;
			padding: 0;
			border: 0;
			font-size: inherit;
			font: inherit;
			vertical-align: baseline;
		}
		.shopitem h5{
			line-height: 18px;
			font-size: 13px;
			font-weight: 600;
			margin: 3px 0 0 0;
			color: #888;
		}
	</style>
</head>
<body>
	<div class="container" style="overflow: hidden;">
	<?php 
		
		echo $sell_list;




	?>
	</div>
</body>





</HTML>