<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Activation</title>
<?php $this->load->view('includes/import');?>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/signup.css" type="text/css" />
</head>
<body>
<!-- Wrapper / Start -->
<div id="wrapper">
    <?php $this->load->view('includes/header');?>
    <div class="container">
        <div class="six columns">
            <h4>Your account is not activated!</h4>
            <p>An E-mail contains activate link has been sent to you E-mail,
                if you did not receive, please try to find in your <strong>junk folder</strong> or
                <a href="/account/resendemail/<?=$uid?>">Resend Activated E-mail</a>
            </p>
        </div>
        <div class="six columns">
            <h4>您的账户还未激活！</h4>
            <p>请检查收件箱，如果未收到请在<strong>垃圾邮件</strong>中查找 建议使用 Gmail， Hotmail  部分国内邮件服务商可能无法收到激活邮件。<br>
            <a href="/account/resendemail/<?=$uid?>">重发激活邮件</a></p>
        </div>
    </div>
</div>
<?php $this->load->view('includes/footer');?>
</body>
</html>