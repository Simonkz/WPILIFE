<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>SHOP | WPILIFE</title>
	<?php $this->load->view('includes/import');?>
	<?php $this->load->view('includes/kindeditor');?>
	<style>
    .label-success {
	    padding: 2px 5px;
	    color:#fff;
		background-color: #169fe6;
	}
	.label-important {
		padding: 2px 5px;
	    color:#fff;
		background-color: #b94a48;
	}
    </style>
</head>
<body>
<!-- Wrapper / Start -->
<div id="wrapper">
<?php $this->load->view('includes/header');?>
<div id="content">


<!-- 960 Container -->
<div class="container floated">

	<div class="sixteen floated page-title">

		<h2>Shop Center</h2>

		<nav id="breadcrumbs">
			<ul>
				<li>You are here:</li>
				<li><a href="<?php echo base_url(); ?>">Home</a></li>
				<li>Shop Center</li>
			</ul>
		</nav>

	</div>

</div>
<!-- 960 Container / End -->


<!-- 960 Container -->
<div class="container floated">
	<?php $this->load->view('includes/account_left_menu');?>
	<!-- Page Content -->
	<div class="eleven floated right">
		<section class="page-content">
			<h3 class="margin">Update what you want to sell</h3>

				<!-- Contact Form -->
				<section id="account">
				
					<!-- Form for Basic Information-->
					<?php 
						$attibutes = array('id'=>'kindeditor', 'name'=>'kindeditor');
						echo form_open_multipart('manage/shop/item_updates',$attibutes);
						echo form_hidden('blogs_id', $product['blogs_id']);
						echo form_hidden('blogs_image_cover', $product['blogs_image_cover']);
					?>
						<fieldset>
						<table width="100%">
							<tr>
								<td>
								    Set your Item image cover: <br/><input type="file" name="userfile"/>
								</td>
							</tr>
							<tr>
								<td>
									<input type="text" name="blogs_title" id="blogs_title" maxlength="50" value="<?php echo $product['blogs_title']; ?>" placeholder="Item Name, such as bike, desk lamp..." style="width:632px;" />
								</td>
							</tr>
							<tr>
								<td>
									<input type="text" name="blogs_price" id="blogs_price" maxlength="20" value="<?php echo $product['blogs_price']; ?>" placeholder="Give a price if you can, which will make other know your item better, such as $45, $23~$111..." style="width:632px;" />
								</td>
							</tr>
							<tr>
								<td><textarea name="content" cols="40" rows="3" id="content"><?php echo $product['blogs_content']; ?></textarea></td>
							</tr>
							<tr>
								<td style="float: right;"><input type="submit" class="submit" id="submit" value=" Submit " /></td>
							</tr>
						</table>
						</fieldset>
						<div class="clearfix"></div>
					</form>
					
					<!-- End Form for Basic Information-->
				</section>
				<!-- Contact Form / End -->
		</section>
	</div>
	<!-- Page Content / End -->


</div>
<!-- 960 Container / End -->


</div>
</div>
<?php $this->load->view('includes/footer');?>

    <script src="<?echo base_url();?>scripts/bootstrap.min.js"></script>
    <script src="<?echo base_url();?>scripts/bootstrap-maxlength.min.js"></script>
    <script>
	$(document).ready(function(){
        $('input#defaultconfig').maxlength()

		$('input#blogs_title').maxlength({
					alwaysShow: true,
		            warningClass: "label label-success",
		            limitReachedClass: "label label-important",
		            placement: 'left'
			});

		$('input#blogs_price').maxlength({
					alwaysShow: true,
		            warningClass: "label label-success",
		            limitReachedClass: "label label-important",
		            placement: 'left'
			});
	});
	</script>
</body>
</html>