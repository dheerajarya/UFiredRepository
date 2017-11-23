<!DOCTYPE html>
<html lang="en">
  <head>
<meta charset="utf-8">
<title>Instagram</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
	
</head>
<body>
	<div class="container">
		<div class="wraper">
			<div class="instagram clierfix">
				<div class="instagram-lt">
					<div class="mobile-img ">
						<img class="mobile-img" src="images/mobile-img.jpg" />
					</div>
				</div>
				<div class="instagram-rt">
					<div class="sign-up">
						<div class="main-form">
					<form class="form" action="SignUp" method="post">
						<!-- <h1>Instagram</h1>
						<p>Sign up to see photos and videos<br> from your friends.</p>
						<div class="face">
						<a href="#" target="_blank">Log in with Facebook</a>
						</div>
						<div class="border">
							<span>OR</span>
						</div> -->
						<select class="input" name="empType" id ="empId">
							<option>Employer</option>
							<option>Employee</option>
							<option>Others</option>							
						</select>
						<input type="text" name = "email" value="" class="input" placeholder="Mobile Number or Email" required>
						<input type="text" name = "fName" value="" class="input" placeholder="First Name" required>
						<input type="text" name = "lName" value="" class="input" placeholder="Last Name" >
						<input type="text" name = "state" value="" class="input" placeholder="State" >
						<input type="text" name = "city" value="" class="input" placeholder="City" >
						<input type="text" name = "country" value="" class="input" placeholder="Country" >
						<input type="text" name = "zipCode" value="" class="input" placeholder="Zip" required>	
						<input type="Password" name = "password" value="" class="input" placeholder="Password" required>
						<div class="sign">
							<input type="submit" value="SignUp">
							<span>BY signing up, you agree to our
<strong>Terms</strong> & <strong>privacy Policy</strong>.</span>
						</div>
					</form>
				 </div>
					<div class="login">
						<span>Have an account?</span> <a href="login.jsp">Log in</a>
					</div>
					
					
					</div>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>