<?php
require_once 'login_process.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>LIMS | Index</title>
	<link rel="stylesheet" type="text/css" id = "theme" href="css/login.css">
</head>
<body>
<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <center><p> <?php if(isset($error_sms)){ echo $error_sms;}?> </p></center>
    <form class="login-form" method = "post">
      <input type="text" placeholder="username" name = "username"/>
      <input type="password" placeholder="password" name = "password"/>
      <button name = "submit">login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
</body>
<script type="text/javascript">
  $('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
</html>