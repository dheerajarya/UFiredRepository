<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</head>
<body id = "top">

	<%
		if (session != null) {
			if (session.getAttribute("user") != null) {
				String name = (String) session.getAttribute("user");
				out.print("Hello, " + name + "  Welcome to ur Profile");
			} else {
				response.sendRedirect("login.jsp");
			}
		}
	%>
	
	<!-- <!-- Header
			<div id="header">
				<div class="inner">
					<a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
					<h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1>
				</div>
			</div>

		Main
			<div id="main">

				One
					<div id="one">
						<div class="major">
							<h2>Ipsum lorem dolor aliquam ante commodo<br />
							magna sed accumsan arcu neque.</h2>
						</div>
						<p>Accumsan orci faucibus id eu lorem semper. Eu ac iaculis ac nunc nisi lorem vulputate lorem neque cubilia ac in adipiscing in curae lobortis tortor primis integer massa adipiscing id nisi accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque cubilia.</p>
					
					</div>

				Two
					<div id="two">
					<ul style="background: rgb(250, 250, 250) none repeat scroll 0% 0%; width: 100%; min-height: 62px; padding: 5px 5px 0px;" >
							
							<form action="/action_page.php">
  <input type="file" name="pic" accept="image/video/*">
  <input type="submit" value="Post video">
</form>
						</ul>
						<h2>Recent Videos</h2>
						<div class="row">
							<div class="6u 12u$(xsmall) work-item">
								 <video width="320" height="240" controls>
  <source src="▶ Abc Song for Children, Learn ABCD, Abc Song for Babies - YouTube [360p].mp4" type="video/mp4">
  <source src="▶ Abc Song for Children, Learn ABCD, Abc Song for Babies - YouTube [360p].ogg" type="video/ogg">
  Your browser does not support the video tag.
</video> 
								<h3>Magna sed consequat tempus</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
							<div class="6u$ 12u$(xsmall) work-item">
								 <video width="320" height="240" controls>
  <source src="▶ Abc Song for Children, Learn ABCD, Abc Song for Babies - YouTube [360p].mp4" type="video/mp4">
  <source src="▶ Abc Song for Children, Learn ABCD, Abc Song for Babies - YouTube [360p].ogg" type="video/ogg">
  Your browser does not support the video tag.
</video> 
								<h3>Ultricies lacinia interdum</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
							<div class="6u 12u$(xsmall) work-item">
								<a href="images/fulls/03.jpg" class="image fit thumb"><img src="images/thumbs/03.jpg" alt="" /></a>
								<h3>Tortor metus commodo</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
							<div class="6u$ 12u$(xsmall) work-item">
								<a href="images/fulls/04.jpg" class="image fit thumb"><img src="images/thumbs/04.jpg" alt="" /></a>
								<h3>Quam neque phasellus</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
							<div class="6u 12u$(xsmall) work-item">
								<a href="images/fulls/05.jpg" class="image fit thumb"><img src="images/thumbs/05.jpg" alt="" /></a>
								<h3>Nunc enim commodo aliquet</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
							<div class="6u$ 12u$(xsmall) work-item">
								<a href="images/fulls/06.jpg" class="image fit thumb"><img src="images/thumbs/06.jpg" alt="" /></a>
								<h3>Risus ornare lacinia</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</div>
						</div>
					
					</div>

				Three
					<div id="three">
						<h2>Get In Touch</h2>
						<p>Accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque lorem ipsum dolor.</p>
						<div class="row">
							<div class="8u 12u$(small)">
								<form method="post" action="#">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Name" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="email" name="email" id="email" placeholder="Email" /></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Message" rows="4"></textarea></div>
									</div>
								</form>
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</div>
							<div class="4u$ 12u$(small)">
								<ul class="labeled-icons">
									<li>
										<h3 class="icon fa-home"><span class="label">Address</span></h3>
										1234 Somewhere Rd.<br />
										Nashville, TN 00000<br />
										United States
									</li>
									<li>
										<h3 class="icon fa-mobile"><span class="label">Phone</span></h3>
										000-000-0000
									</li>
									<li>
										<h3 class="icon fa-envelope-o"><span class="label">Email</span></h3>
										<a href="#">hello@untitled.tld</a>
									</li>
								</ul>
							</div>
						</div>
					</div>

				
			</div>

		Footer
			<div id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</div> -->
 -->
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>	
	


	
	 </br>
	</br>
	<form action="Logout" method="post">
		<input type="submit" value="Logout">
	</form> 
</body>
</html>