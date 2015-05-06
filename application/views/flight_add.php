<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Airport Pickup Service     |     WPI Life</title>
	<?php $this->load->view('includes/import');?>
	<link rel="stylesheet" href="<?php echo base_url(); ?>css/signup.css" type="text/css" />
	<script type="text/javascript">
		$(document).ready(function() 
		{
			$('.new_students_tab').attr('id', 'current');
		});
		
	</script>
	<style type="text/css">
		#log_reg input[type="text"] {width:113px; display: inline;}
		#log_reg img {display: inline; vertical-align: bottom;}
	</style>
</head>
<body>
<!-- Wrapper / Start -->
<div id="wrapper">
	<?php $this->load->view('includes/header');?>
	<div id="content">
	<?php 
		echo br(2);
		echo form_open("service/addflightinfo");
	?>	
			<table cellpadding="0" cellspacing="0" border="0"  id="log_reg">
				<tr>
					<td class="input">
						<input type="text" name="airline" placeholder="Airline"  required="required" />
						<input type="text" name="flight_num" placeholder="Flight Number"  required="required" />
					</td>
				</tr>
				<tr>
					<td class="input">Arrival Date:  <input type="date" name="date" id="datepicker" required="required" /></td>
				</tr>
				<tr>
					<td class="input">Arrival Time:  <input type="time" name="time" placeholder="Arrival time    " requried="required" /> </td>
				</tr>
				<tr>
					<td class="input">
						Contact Information:  <textarea  name="contact" cols="30"> </textarea>					
					</td>
				</tr>
				<tr>
					<td>
						Luggage Information:  <textarea  name="luggage" cols="30"> </textarea>					
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="agree" value="agree"> By selecting this box, I agree to the <a href="http://www.wpilife.org/tos"> CSSA Terms of Service </a>.
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Submit" />
						
					</td>
				</tr>
			</table>
		<?php echo form_close(br(2)); ?>
	</div>
</div>
<?php $this->load->view('includes/footer');?>
<script>
	$("#datepicker").datepicker({
		inline: true
	});
</script>

</body>
</html>