<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="register.css">
	<title>Asset Tracking</title>

</head>
<body>



	<div class="loginContainer">

		<div class="login">
			<h1>Account Registration</h1>
		</div>
		
		<div class="signup">

			<div class="formcontainer">
				<h1 id="singup">SIGN <span style="color: blue;">UP</span></h1>
				 <form>
  				<div class = "fullname"><input type="text" name="fname" class = "inputName" placeholder="Enter Full Name"></div> <br><br>
  				<div class="email"><input type="text" name="email" class = "inputEmail" placeholder="Enter Email"></div><br><br>
  				<div class="password"><input type="password" name="password" class = "password" placeholder="Enter Password"></div><br><br>
  				<div class="repassword"><input type="password" name="repassword" class = "repassword" placeholder="Repeat Password"></div><br><br>
  				
			</form>

			<div class="button">
				<button id="button" onclick = "dashboardPage() ">Register</button></div>
			</div>

			<div class = "secondColumn">
				
				<img src="Pictures/signBack.jpg" class="image"> <br>
				<div class="account"><a href="" id="haveAccount">Already Have Account</a></div>
			</div>


		</div>


	</div>

	<script>
		function dashboardPage() {
            window.location.href = 'http://localhost/asset/myDashboard/dashboard.php';
        }
	</script>
</body>
</html>