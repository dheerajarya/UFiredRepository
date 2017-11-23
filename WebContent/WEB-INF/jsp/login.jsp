<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>UFired</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />


	
</head>
<body>
	<div class="container">
		<div class="wraper">
			<div class="instagram clierfix">
				<div class="instagram-lt">
					<div class="mobile-img">
						<img class="mobile-img" src="images/mobile-img.jpg" />
					</div>
				</div>
				<div class="instagram-rt">
					
						<div class="main-form">
					<form class="form" action="Login" method="post">
						<!-- <h2>Web World</h2> -->
						<select required class="input" name="empType" id ="empId" >
							<option>Employer</option>
							<option>Employee</option>
							<option>Others</option>							
						</select>
						<input type="text"  class="input" name="uname" placeholder="Username" required>
						<div class="forgot">
							<input type="Password"  class="input" name="pass" placeholder="Password" required>
							<a href="download?action=">forgot?</a>
						</div>
						<label for="errorMessage" style="text-align: center; color:red;">${errorMessage}</label>
						<div class="sign">
							<input type="submit" value="Login">
						</div>
					</form>
				 </div>
					<div class="login">
						<span>New User?</span> <a href="signup.jsp" >Sign In</a>
					</div>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>

