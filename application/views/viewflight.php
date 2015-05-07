
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>WPI Life</title>
	<style type="text/css">
		h1{
		text-align:center;
		font-size: 40px;
		}
		table,th,td
		{
		border:1px  solid black;
		border-collapse:collapse;
		}
		th,td
		{
		padding:5px;
		}
		th
		{
		white-space:nowrap;
		}
	</style>
</head>
<body>
<!-- Wrapper / Start -->
<div id="wrapper">
	<div id="content">
		<h1> Airport Pickup Management System  </h1>
		
		<table id="periods">
			<tr>
				<?php 
					$n = $this->periodlib->periodtonum($this->periodlib->getCurrentPeriod());
					for ($i=0;$i<=$n;$i++){
						$P = $this->periodlib->numtoperiod($i);?>
					<td><a href="showpickup?period=<?=$P ?>"><?=$P;?></a></td>
				<?php }?>
			</tr>
		</table>
		<div>Now displaying flights from semester <?=$period;?>, which from 
		<span style="color: red"><?php echo date('Y-m-d',$this->periodlib->getDateFromPeriod($period));?></span>
		to <span style="color: red"><?php echo date('Y-m-d',$this->periodlib->getNextDateFromPeriod($period));?></span>
		</div>
		<table id="table_results">
			<thead>
			<tr style="border-collapse: collapse;">
				<th>User ID</th>
				<th>Gender</th>
				<th>Name</th>
				<th>E-mail</th>
				<th>Airelines</th>
				<th>Flight #</th>
				<th>Arvl Date</th>
				<th>Arvl Time</th>
				<th>Luggage </th>
				<th>Contact </th>
			</tr></thead>
			<tbody>
			<?php if ((!isset($results)) or (!$results)){?>
				<tr>
					<td colspan="10" style="text-align: center;">No flights found</td>
				</tr>
			<?php }else{?>
			<?php foreach($results as $row) { ?>
				<tr>
					<td> <?php echo $row->users_id ?> </td>
					<td> <?php echo $row->users_gender ?> </td> 
					<td> <?php echo $row->users_lastname.' '.$row->users_firstname?> </td> 
					<td> <?php echo $row->users_email_address ?> </td> 
					<td> <?php echo $row->airlines ?> </td> 
					<td> <?php echo $row->flight_num ?> </td> 
					<td> <?php echo $row->arrival_date ?> </td> 
					<td> <?php echo $row->arrival_time ?></td> 
					<td> <?php echo $row->luggage ?> </td> 
					<td> <?php echo $row->contact ?> </td> 
				</tr>
			<?php }
						} ?>
			</tbody>
		</table>
		<h2> For used inside WPI CSSA only </h2>
	</div>
</div>

</body>
</html>



             
