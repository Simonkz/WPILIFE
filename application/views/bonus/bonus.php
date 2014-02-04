﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>

<style type="text/css">
@font-face {
	font-family: digit;
	src: url('digital-7_mono.ttf') format("truetype");
}
</style>

<link href="<?php echo base_url();?>css/bonus/love.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?php echo base_url();?>scripts/bonus/jquery.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>scripts/bonus/garden.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>scripts/bonus/functions.js"></script>

</head>

<body>

<div id="mainDiv">
	<div id="content">
		<div id="code">
			<span class="comments">/**</span><br />
			<span class="space"/><span class="comments">*Our story started from <?php echo $love['startDate']; ?></span><br />
			<span class="space"/><span class="comments">*/</span><br />
			<span class="keyword">Boy</span> name =  <?php echo $love['boy']; ?><br />
			<span class="keyword">Girl</span> name =  <?php echo $love['girl']; ?><br />
			<span class="comments">// Fall in love river. </span><br />
			The boy love the girl;<br />
			<span class="comments">// They love each other.</span><br />
			The girl loved the boy;<br />
			<span class="comments">// AS time goes on.</span><br />
			The boy can not be separated the girl;<br />
			<span class="comments">// At the same time.</span><br />
			The girl can not be separated the boy;<br />
			<span class="comments">// Both wind and snow all over the sky.</span><br />
			<span class="comments">// Whether on foot or 5 kilometers.</span><br />
			<span class="keyword">The boy</span> very <span class="keyword">happy</span>;<br />
			<span class="keyword">The girl</span> is also very <span class="keyword">happy</span>;<br />
			<span class="placeholder"/><span class="comments">// Whether it is right now</span><br />
			<span class="placeholder"/><span class="comments">// Still in the distant future.</span><br />
			<span class="placeholder"/><?php echo $love['from']; ?> has but one dream;<br />
			<span class="comments">// That is <?php echo $love['to']; ?> can be happy always.</span><br />
			<br>
			<br>
			I want to say:<br />
			Baby, I love you forever;<br />
		</div>
		<div id="loveHeart">
			<canvas id="garden"></canvas>
			<div id="words">
				<div id="messages">
					亲爱的<?php echo $love['to']; ?>，这是我们相爱在一起的时光。
					<div id="elapseClock"></div>
				</div>
				<div id="loveu">
					爱你直到永永远远。<br/>
					<div class="signature">- 爱你的<?php echo $love['from']; ?></div>
				</div>
			</div>
		</div>
	</div>
	<div id="copyright">
		<a href="#">....</a><br />
		<a href="#">....</a><br />
		
	</div>
</div>

<script type="text/javascript">
var offsetX = $("#loveHeart").width() / 2;
var offsetY = $("#loveHeart").height() / 2 - 55;
var together = new Date();
together.setFullYear(<?php echo  date("Y", strtotime($love['startDate'])); ?>, <?php echo  date("n", strtotime($love['startDate']))-1; ?>, <?php echo  date("j", strtotime($love['startDate'])); ?>);
together.setHours(0);
together.setMinutes(0);
together.setSeconds(0);
together.setMilliseconds(0);

if (!document.createElement('canvas').getContext) {
	var msg = document.createElement("div");
	msg.id = "errorMsg";
	msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
	document.body.appendChild(msg);
	$("#code").css("display", "none")
	document.execCommand("stop");
} else {
	setTimeout(function () {
		startHeartAnimation();
	}, 5000);

	timeElapse(together);
	setInterval(function () {
		timeElapse(together);
	}, 500);

	adjustCodePosition();
	$("#code").typewriter();
}
</script>

</body>
</html>