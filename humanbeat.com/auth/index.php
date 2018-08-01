<?php include_once 'resource/session.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Homepage</title>
  </head>
  <body>
<h2> User Authentication System </h2><br>

<?php if(!isset($_SESSION['username'])): ?>
<p> You are not currently Logged In <a href="login.php"> Login </a>Not yet a member? <a href="signup.php" >SignUp </a></p>
<?php else: ?>
<p> You are logged in as <?php if(isset($_SESSION['username'])) echo $_SESSION['username'];?> <br><a href="logout.php">Logout</a></p>
<?php endif ?>
  </body>
</html>
