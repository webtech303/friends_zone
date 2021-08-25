<!DOCTYPE html>
<html>
<head>
	<title>Forgotten Password</title>
	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style/home_style.css">
</head>
<style type="text/css">
	body{
		overflow: hidden;
	}
	.main-content{
		width: 50%;
		height: 40%;
		margin: 10px auto;
		background-color: #fff;
		border: 2px solid #e6e6e6;
		padding: 40px 50px;
	}
	.header{
		border: 0px solid #000;
		margin-bottom: 5px;
	}
	.well{
		background-color: #187FAB;
	}
	#signin{
		width: 60%;
		border-radius: 30px;
	}
</style>
<body>
<div class="row">
	<div class="col-sm-12">
		<div class="well">
			<center><h1 style="color: white;"><strong>Friends Zone</strong></h1></center>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-12">
		<div class="main-content">
			<div class="header">
				<h3 style="text-align: center;"><strong>Change Your Password</strong></h3><hr>
			</div>
			<div class="l_pass">
				<form action="" method="post">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input id="password" type="password" class="form-control" name="pass" placeholder="New password">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input id="password" type="password" class="form-control" placeholder="Re-Enter New Password" name="pass1" required>
					</div><br>
					<center><button id="signup" class="btn btn-info btn-lg" name="change">change Password</button></center>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<?php
	include("includes/connection.php");
	if(isset($_POST['change'])){
	$pass = htmlentities(mysqli_real_escape_string($con, $_POST['pass']));	
	$pass1 = htmlentities(mysqli_real_escape_string($con, $_POST['pass1']));

	if($pass == $pass1){
	if(strlen($pass) >=6 && strlen($pass1) <=60){
	$update = "update users set user_pass='$pass' where user_id='$user_id'";
	$run = mysqli_query($con, $update);
	echo"<script>alert('Your Password is Change a moment ago')</script>";
	echo"<script>window.open('home.php','_self')</script>";
}
else{
	echo"<script>alert('Your Password Should be greater than 6 words')</script>";
}
}else{
		echo"<script>alert('Your Password did not match')</script>";
		echo"<script>window.open('change_password.php','_self')</script>";
}
}

?>
