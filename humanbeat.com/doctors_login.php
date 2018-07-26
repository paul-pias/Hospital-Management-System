<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style_login.css" type="text/css" media="all" >
<title> HUMAN BEAT || PATIENT LOGIN </title>
</head>
<body>
<div class="login-main">
<h3 ><a href="index.php">Login Now </a></h3>
<div class="container">
  <form action="/action_page.php">
    <div class="row">
      <h2 style="text-align:center; ">Login with Social Media </h2>
			<h2 style="text-align:center;">Or </h2>
			 <h2 style="text-align:center;">Sign in Manually </h2>
      <div class="vl">
        <span class="vl-innertext">or</span>
      </div>

      <div class="col">
        <a href="#" class="fb btn">
          <i class="fa fa-facebook fa-fw"></i> Login with Facebook
         </a>
        <a href="#" class="twitter btn">
          <i class="fa fa-twitter fa-fw"></i> Login with Twitter
        </a>
        <a href="#" class="google btn"><i class="fa fa-google fa-fw">
          </i> Login with Google+
        </a>
      </div>

      <div class="col">
        <div class="hide-md-lg">
          <p>Or sign in manually:</p>
        </div>

        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
      </div>

    </div>
  </form>
</div>

<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="patient_registration.php" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="user_view.php" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>
</div>
</body>
</html>
