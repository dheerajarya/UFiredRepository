<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="Jobboard">
    
    <title>UFired</title>    

    <!-- Favicon -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">    
    <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css">  
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css">  
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" type="text/css"> 
    <link rel="stylesheet" href="assets/fonts/themify-icons.css"> 

    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/extras/animate.css" type="text/css">
    <!-- Slicknav js -->
    <link rel="stylesheet" href="assets/css/slicknav.css" type="text/css">
    <!-- Main Styles -->
    <link rel="stylesheet" href="assets/css/main.css" type="text/css">
    <!-- Responsive CSS Styles -->
    <link rel="stylesheet" href="assets/css/responsive.css" type="text/css">


	<script type="text/javascript" >
	function isNumber(evt) {
	    evt = (evt) ? evt : window.event;
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}
    </script>
    
  </head>

    <body>  
  
		
    <!-- Header Section Start -->
      <div class="header">    
        <!-- Start intro section -->
        <div id="intro" class="section-intro">
          <div class="logo-menu">
            <div class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="50">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand logo" href="<%=request.getContextPath()%>"><img src="assets/img/logo.png" alt=""></a>
                </div>

                <div class="collapse navbar-collapse" id="navbar">              
                <!-- Start Navigation List -->
                <ul class="nav navbar-nav">
                <li>
                   <a href="JobListingController?action=JobList"><b>Job Listing</b></a> 
                   </li>
                 <!--  <li>
                    <a href="#">
                    Employer </a>
                  </li> -->
                  <li>
                    <a href="#">
                    Contact
                    </a>
                  
                  </li>
                  
                </ul>
                
                
                
                <form action="Logout" method="post">
		
	 
                
                <ul class="nav navbar-nav navbar-right float-right logedin">
                  <li class="left"> Hi, 
                    <%
                    if (session != null) { 
            			if (session.getAttribute("loginUserName") != null) {
            				String name = (String) session.getAttribute("loginUserName");
            				/* out.print("Hello, " + name + "  Welcome to ur Profile"); */
            				out.println(name);
            				/* out.println(session.getId()); */
            			} 
            		}
	%>
                  
                
                  
                  
                  <ul>
                  <li>My Profile</li>
                  <li>Upload Job</li>
                 <!--  <li><a href="/JobListingController" value="JobListingController">Upload Job</a></li> -->
                 
                   <li><input type="submit" value="Logout"></li>

                  
                  </ul>
                  
                  </form>
                  
                  </li>
                  
                  
                </ul>
              </div>                           
            </div>
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a class="active" href="index.html">Talent</a>
                      
              </li>
              <li>
                <a href="about.html">Employer</a>
               
              </li>
              <li>
                <a href="#">Contact</a>
                
              </li>
              
              
              
               <li class="left"> Hi, 
                    <%
		if (session != null) {
			if (session.getAttribute("loginUserName") != null) {
				String name = (String) session.getAttribute("loginUserName");
				/* out.print("Hello, " + name + "  Welcome to ur Profile"); */
				out.print(name);
			} 
		}
	%></li>
                  
                  <ul>
                  <li>My Profile</li>
                                    <li>Logout</li>

                  
                  </ul>
                  
                  
                  
                  </li>
                          
            </ul>
            <!-- Mobile Menu End --> 
          </div>

        
        
      </div>
      <!-- Search Section Starts -->  
      <div class="container-fluid">
      <div class="row">
      <div class="col-md-12 col-ld-12 col-xs-12 col-sm-12 sign_base">
      
      <div class="container">
  Upload Job</div>
      </div>
      
      
      
      </div>
      
      
      
      
      </div>
      
      
        
 <!-- Search Section End -->    
 
  <!-- listing Section starts -->    
<div class="container-fluid grey">
<div class="container">
<div class="row">


<div class="col-md-5 col-ld-5 col-xs-12 col-sm-5 white registration2">

<!-- <strong>Hi, Pawan</strong> -->
    <h3>Welcome to uFired.com. Last step and you are done!!</h3>
    

<form class="form" action="UrlSignUpController" method="post">
<div class="form-group">
     <label for="message" style="text-align: center; color:red;">${message}</label>
  </div>
  <div class="form-group">
     <select class="form-control" id="experience" name="experience" required>
      <option></option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
       <option>6</option>
      <option>7</option>
      <option>8</option>
      <option>9</option>
       <option>10+ Experience</option>      
    </select>
  </div>
   <div class="form-group">
    <input type="text" class="form-control" id="skills" name="skills" placeholder="Your skillls (eg. Java, Hibernate)" 
    maxlength="50" required>
  </div>
    
   <div class="form-group">
    <input type="text" class="form-control" id="company" name="company" placeholder="Current Company" 
    maxlength="50" required>
  </div>
  
   <div class="form-group">
    <input type="text" class="form-control" id="salary" name="salary" placeholder="Current Salary" 
    maxlength="60" required>
  </div>
   <div class="form-group">
    <input type="text" class="form-control" id="videoURL" name="videoURL" placeholder="Paste your video url link" 
    maxlength="200" required>
  </div>  
  
  
  
  
<!--   <div class="form-group">
   <div class="fileinput fileinput-new" data-provides="fileinput">
    <span class="btn btn-default btn-file"><span>Choose file</span><input type="file" /></span>
    <span class="fileinput-filename"></span><span class="fileinput-new">
  </div> -->
  
  
    <div class="form-group">
   <textarea class="form-control" id="comments" name="comments" rows="3" maxlength="200" required>Job Description</textarea>
  </div>
  
   <div class="form-group"> 
    
    <input type="text" class="form-control" name = "country" value="" class="input" placeholder="Country" 
    maxlength="30" required>
     
  </div>
  <div class="form-group">   
    
    <input type="text" class="form-control" name = "state" value="" class="input" placeholder="State" 
    maxlength="30" required>
  </div>
  <div class="form-group">
    
    <input type="text" class="form-control" name = "city" value="" class="input" placeholder="City" 
    maxlength="30" required>
  </div>
   <div class="form-group">
    <input type="text" class="form-control" name = "zipCode" id="zipcode" 
     placeholder="zipcode" onkeypress="return isNumber(event)" maxlength="20" required>
  </div>   
  
  <div class="controls">
   <button id="signin" name="submit" class="btn orange_button" value="UrlSignUpController">Submit</button> 
  </div>
</form>
  </div>
 





</div>

 
 </div>
 </div>
 </div>
 
   <!-- listing Section ends -->    
<div class="clearfix"></div>
 
 
 
    <!-- Footer Section Start -->
    <div class="footer">
    	<!-- Footer Area Start -->
    	<div class="footer-Content">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="widget">
                <h3 class="block-title"><img src="assets/img/logo.png" class="img-responsive" alt="Footer Logo"></h3>
                <div class="textwidget">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum. Sed ex est, consectetur eget facilisis sed.</p>
                </div>
              </div>
            </div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
    						<h3 class="block-title">Quick Links</h3>
  							<ul class="menu">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Support</a></li>
                  <li><a href="#">License</a></li>
                  <li><a href="#">Terms & Conditions</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
    					</div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
                <h3 class="block-title">Trending Jobs</h3>
                <ul class="menu">
                  <li><a href="#">Android Developer</a></li>
                  <li><a href="#">Senior Accountant</a></li>
                  <li><a href="#">Frontend Developer</a></li>
                  <li><a href="#">Junior Tester</a></li>
                  <li><a href="#">Project Manager</a></li>
                </ul>
              </div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
    						<h3 class="block-title">Follow Us</h3>
                <div class="bottom-social-icons social-icon">  
                  <a class="twitter" href="https://twitter.com/GrayGrids"><i class="ti-twitter-alt"></i></a>
                  <a class="facebook" href="https://web.facebook.com/GrayGrids"><i class="ti-facebook"></i></a>                   
                  <a class="youtube" href="https://youtube.com"><i class="ti-youtube"></i></a>
                  <a class="dribble" href="https://dribbble.com/GrayGrids"><i class="ti-dribbble"></i></a>
                  <a class="linkedin" href="https://www.linkedin.com/GrayGrids"><i class="ti-linkedin"></i></a>
                </div>	
                <p>Join our mailing list to stay up to date and get notices about our new releases!</p>
                <form class="subscribe-box">
                  <input type="text" placeholder="Your email">
                  <input type="submit" class="btn-system" value="Send">
                </form>	
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!-- Footer area End -->
    	
    	<!-- Copyright Start  -->
    	<div id="copyright">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-9 col-xs-12">
              <div class="site-info text-center">
                <p> &copy; 2017 - uFired, Inc All Rights Reserved</p>
              </div>   
    				</div>
                    <div class="col-md-3 col-xs-12">
              <div class="site-info">
               <a href="#"> Privacy</a> <a href="#"> Terms</a><a href="#">  SItemap</a>
              </div>   
    				</div>
    			</div>
    		</div>
    	</div>
    	<!-- Copyright End -->

    </div>
    <!-- Footer Section End -->  
    
    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="ti-arrow-up"></i>
    </a>

    
        
      <!-- Main JS  -->
    <script type="text/javascript" src="assets/js/jquery-min.js"></script>      
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="assets/js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
       
    
  </body>
</html>