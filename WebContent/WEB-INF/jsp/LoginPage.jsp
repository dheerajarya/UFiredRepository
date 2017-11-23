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
                    <a class="active" href="index.jsp">
                    Talent 
                    </a>
                   
                  </li>
                  <li>
                    <a href="#">
                    Employer </a>
                  </li>
                  <li>
                    <a href="#">
                    Contact
                    </a>
                  
                  </li>
                </ul>
                <ul class="nav navbar-nav navbar-right float-right">
               <%--  <li class="left"> 
                  <a href="<%=request.getContextPath()%>/GmailLogin?action=gmailLogin" name="Gmail Login">Gmail Login</a> 
                 <!--  <a href="#signup" data-toggle="modal" data-target=".bs-modal-sm"><i class="ti-lock"></i>  Login</a> -->
				</li> --%>
                  <li class="left"> 
                  <a href="<%=request.getContextPath()%>/Login?action=LoginPage" name="Login">Login</a> 
                 <!--  <a href="#signup" data-toggle="modal" data-target=".bs-modal-sm"><i class="ti-lock"></i>  Login</a> -->
				</li>
                 <li class="right">
                 <%--  <a href="<%=request.getContextPath()%>/SignUp" name="SignUp">SIGN UP</a> --%>
                  <!-- <button class="btn signup" href="signup.jsp"></i>  Signup</button> -->
                  <a href="<%=request.getContextPath()%>/SignUp?action=SignUpPage" name="SignUp">SIGN UP</a> 
        		</li>   
        		 <li class="right">   
        		 <a href="<%=request.getContextPath()%>/Login?action=RecordResume" name="RecordResume">Record Resume</a>
        		 </li>   
              
</li>
                </ul>
              </div>                           
            </div>
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a class="active" href="index.jsp">Talent</a>
                      
              </li>
              <li>
                <a href="about.html">Employer</a>
               
              </li>
              <li>
                <a href="#">Contact</a>
                
              </li>
              
              <li class="btn-m"><a href="post-job.html"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              <li class="btn-m"><a href="my-account.html"><i class="ti-lock"></i>  Log In</a></li>          
            </ul>
            <!-- Mobile Menu End --> 
          </div>

        
        
      </div>
      <!-- Search Section Starts -->  
      <div class="container-fluid">
      <div class="row">
      <div class="col-md-12 col-ld-12 col-xs-12 col-sm-12 sign_base">
      
      <div class="container">Login</div>
      </div>
      
      
      
      </div>
      
      
      
      
      </div>
      
      
        
 <!-- Search Section End -->    
 
  <!-- listing Section starts -->    
<div class="container-fluid grey">
<div class="container">
<div class="row">


<div class="col-md-5 col-ld-5 col-xs-12 col-sm-5 white registration2">

<!-- <strong>Login</strong> -->
    <h3>Registered users, login here</h3>
    
 
<form action="Login" method="post">
  <fieldset>
  <div class="form-group">
    <select name="empType" class="form-control"  required="required">
      <option></option>
      <option>Employer</option>
      <option>JobSeeker</option>
     
    </select>
  </div>
            <div class="control-group">
              <div class="controls">
                <input id="userid" name="uname" type="text" class="form-control" placeholder="Email" class="input-medium" 
                maxlength="60" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <div class="controls">
                <input id="passwordinput" name="pass" class="form-control" type="password" placeholder="********" class="input-medium"
                maxlength="30" required>
              </div>
            </div>
  <!-- Button -->
  <label for="errorMessage" style="text-align: center; color:red;">${errorMessage}</label>
            <div class="control-group">
              <div class="controls">
                <button id="signin" name="signin" class="btn orange_button" value="Login">Sign In</button>
                
                <a href="Login?action=ForgotPwd" class="forget"><b>Forgot Password </b></a> 
                <!-- <a href="#signup" class="forget" data-toggle="modal" data-target=".bs-modal-sm">
					Forgot password</a> -->
              </div>
              
              
           <!--   <div class="forget"> New user?    <a href="#">Register now</a></div> -->
            </div>
            </fieldset>
            </form>
 
    

<form>
  



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

    <!-- Modal -->
<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content"><button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
            <strong>Forgot Password</strong>
              
        
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
   
        <div class="tab-pane fade active in" id="signin">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
      
            <div class="control-group">
              <div class="controls">
                <input required="" id="userid" name="userid" type="text" class="form-control" placeholder="Email" class="input-medium" required="">
              </div>
            </div>

         

            

            <!-- Button -->
            <div class="control-group">
              <div class="controls">
                <button id="signin" name="Forgotpassword" class="btn orange_button">Submit</button>
                <a href="#" class="forget">Forgot Password</a>
              </div>
             
            </fieldset>
            </form>
            
            
            
            
            
            
        </div>
      </div>
    </div>
    
        
      <!-- Main JS  -->
    <script type="text/javascript" src="assets/js/jquery-min.js"></script>      
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="assets/js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
       
    
  </body>
</html>