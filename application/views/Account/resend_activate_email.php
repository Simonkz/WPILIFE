<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo $title; ?></title>
<?php $this->load->view('includes/import');?>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/signup.css" type="text/css" />
</head>
<body>
<!-- Wrapper / Start -->
<div id="wrapper">
    <?php $this->load->view('includes/header');?>
    <div class="col-md-5">
        <h4>Your account is not activated!</h4>
        <p>An E-mail contains activate link has been sent to you E-mail,
            if you did not receive, please try to find in your <b>junk folder</b> or
            <a href="/account/resendemail?uid=<?=$uid?>">Resend Activated E-mail</a>
        </p>
    </div>
</div>
<?php $this->load->view('includes/footer');?>
</body>
</html>