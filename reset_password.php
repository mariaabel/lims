<html>
<head>
<head>
<link rel="stylesheet" type="text/css" id="theme" href="css/login.css"/>
</head>
</head>
<body>
<div class="login-page">
  <div class="form">
  <center>
   <img src = 'logo/green_acres_logo.png' width = "100px" height = "100px"/>
   <h3 style = "color:green">GREEN ACRES SCHOOLS</h3>
   </center>
    <form class="login-form">
      <input type="email" placeholder="Email Address"/>
      <button>Reset</button>
      <p class="message">Have an account? <a href="index.php">Login</a></p>
    </form>
  </div>
</div>
</body>
<script>
$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
</html>