<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
   <meta name="author" content="Jobboard">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="118469365600-9jslj9hnvd7rs8pc1r4gc4nd4tl8gns1.apps.googleusercontent.com">
    <!-- Favicon -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">    
    <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css">  
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css">  
    <!-- Material CSS -->
    <link rel="stylesheet" href="assets/css/material-kit.css" type="text/css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" type="text/css"> 
    <link rel="stylesheet" href="assets/fonts/themify-icons.css"> 

    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider CSS -->
    <link rel="stylesheet" href="assets/extras/settings.css" type="text/css"> 
    <!-- Slicknav js -->
    <link rel="stylesheet" href="assets/css/slicknav.css" type="text/css">
    <!-- Main Styles -->
    <link rel="stylesheet" href="assets/css/main.css" type="text/css">
    <!-- Responsive CSS Styles -->
    <link rel="stylesheet" href="assets/css/responsive.css" type="text/css"> 

    
  </head>

  <body>  
  <form action="Login" method="post">
  <input type="hidden" name="param1" value="RequestLoginPage">
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
                    <!-- <a href="#">
                    Employer </a> -->
                  </li>
                  <li>
                    <a href="#">
                    Contact
                    </a>
                  
                  </li>
                </ul>
                <ul class="nav navbar-nav navbar-right float-right">
                <li class="left"> 
                   <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      				<img id="myImg"><br>
     				<p id="name"></p>
      				<div id="status">
  				   </div>
                  <%-- <a href="<%=request.getContextPath()%>/GmailLogin?action=gmailLogin" name="Login">Gmail Login</a> --%> 
                  
                  <!-- <input type="submit" value="Login"> --><!-- <a href="LoginPage.jsp">   Login</a> -->
</li>
                  <li class="left"> 
                    
                  <a href="<%=request.getContextPath()%>/Login?action=LoginPage" name="Login">Login</a> 
                  
                  <!-- <input type="submit" value="Login"> --><!-- <a href="LoginPage.jsp">   Login</a> -->
</li>
                 <li class="right"> <!-- <button class="btn signup" href="signup.jsp"></i>Signup</button> -->
                   <a href="<%=request.getContextPath()%>/SignUp?action=SignUpPage" name="SignUp">SIGN UP</a> 
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
             <!--  <li>
                <a href="about.jsp">Employer</a>
               
              </li> -->
              <li>
                <a href="#">Contact</a>
                
              </li>
              
              <li class="btn-m"><a href="job_listing.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              <li class="btn-m"><a href="my-account.jsp"><i class="ti-lock"></i>  Log In</a></li>          
            </ul>
            <!-- Mobile Menu End --> 
          </div>

           

      <div class="search-container" style="relative;">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h1>Revolutionizing, <br/>
how we Post and Apply jobs
</h1>
<div class="arrow_bottom"><a href="#" ><img src="assets/img/arrow_down.png" alt="" ></a></div>
               </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end intro section -->
    </div>
    
    <!-- Find Job Section Start -->
    <div class="find-job section">
      <div class="container">
        <h2 class="title-text">Record your resume</h2>
        <div class="row">
          <div class="col-md-12">
            
         <a href="#" ><img src="assets/img/camera.png" alt="" ></a>

          
            
          </div>
        </div>
      </div>
    </div>
    <!-- Find Job Section End -->

    <!-- Category Section Start -->
    <div class="section text-center" >
    <div class="container">
     <div class="row">
          <div class="col-md-12">
          
           <div class="col-md-6 col-sm-6" style="margin-bottom:20px;">
            <video width="380" height="300" controls>
  <source src="Nature.mp4" type="video/mp4">
  <!-- <source src="sachin.ogg" type="video/ogg"> -->
 
</video> 
           <!-- <img src="assets/img/video.jpg" alt=""/> -->
           </div>       
           <div class="col-md-6 col-sm-6 about-content"><h2><strong>About</strong> uFired </h2>
          
          
          
          
          
<strong>          Simple …!! Stop Learning Start Show Your Skills 
</strong>
<p>No Shitty filtering by companies on gender biased location biased of university biased. Pure skilled, all you have to do is record the video of laptop screen or explain your skill. Entire process simple straight forward. We check every video before approved to be on our portal.</p>

<p>Jobs will come to you, Record you’re Skills. If You Need a Job Record IT 
Simple …!! Stop Learning Start Show Your Skills 
Fired Put a Video what you Learnt Get Hired.</p>
</div>

          
          </div>
          </div>
    
    
    
    </div>
  
      </div>
    <!-- Category Section End -->  

    

    <!-- Start Purchase Section -->
    <div class="section purchase" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row">
          <h2 class="title-text">How it works</h2>
          <div class="col-md-6 work col-xs-6"><a href="job_listing.jsp"><img src="assets/img/video.png" alt=""/><span>Record video</span></a></div>
          <div class="col-md-6 col-xs-6 work "><a href="#"><img src="assets/img/upload.png" alt=""/><span>Upload video</span></a></div>
        </div>
      </div>
    </div>
    <!-- End Purchase Section -->
     
   

    <!-- Testimonial Section Start -->
    <div id="testimonial" class="section">
      <div class="container">
        <div class="row">
          <div class="touch-slider" class="owl-carousel owl-theme">
            <div class="item active text-center">  
              <img class="img-member" src="assets/img/testimonial/img1.jpg" alt=""> 
              <div class="client-info">
               <h2 class="client-name">Jessica <span>(Designer)</span></h2>
              </div>
              <p><i class="fa fa-quote-left quote-left"></i> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  <i class="fa fa-quote-right quote-right"></i><br>Aenean comodo ligula eget dolor. Aenean massa. 
              <br/>Cum sociis natoque penatibus  quisque rutrum aenean imperdiet. </p>
            </div>
            <div class="item text-center">
              <img class="img-member" src="assets/img/testimonial/img2.jpg" alt=""> 
              <div class="client-info">
               <h2 class="client-name">John Doe <span>(Project Menager)</span></h2>
              </div>
               <p><i class="fa fa-quote-left quote-left"></i> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  <i class="fa fa-quote-right quote-right"></i><br>Aenean comodo ligula eget dolor. Aenean massa. 
              <br/>Cum sociis natoque penatibus  quisque rutrum aenean imperdiet. </p>
            </div>
            <div class="item text-center">
              <img class="img-member" src="assets/img/testimonial/img3.jpg" alt=""> 
              <div class="client-info">
                <h2 class="client-name">Helen <span>(Engineer)</span></h2>
              </div>
               <p><i class="fa fa-quote-left quote-left"></i> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.  <i class="fa fa-quote-right quote-right"></i><br>Aenean comodo ligula eget dolor. Aenean massa. 
              <br/>Cum sociis natoque penatibus  quisque rutrum aenean imperdiet. </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial Section End -->

    <!-- Clients Section -->
    <div class="clients section">
      <div class="container">
        <h2 class="section-title">
          <strong>Clients</strong> &amp; Partners
        </h2>
        <div class="row"> 
          <div id="clients-scroller">
            <div class="items">
              <img src="assets/img/clients/img1.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img2.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img3.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img4.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img5.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Client Section End -->

     

    <!-- Infobox Section Start -->
    <div class="infobox section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="info-text">
              <h2>Looking for a Talent?</h2>
              <p>Thousand of employees looking for a job. Search a right talent your are looking for</p>
            </div> 
            <a href="#" class="btn btn-border">POST A JOB</a>           
          </div>
        </div>
      </div>
    </div>
    <!-- Infobox Section End -->

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
            <span aria-hidden="true">�</span>
          </button>
            <strong>Login</strong>
              
        
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
   
        <div class="tab-pane fade active in" id="signin">
            <form class="form-horizontal" action="Login" method="post">
            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
            <div class="form-group">
    <select class="form-control" id="Country" name="empType">
      <option>Select</option>
      <option>Employer</option>
      <option>JobSeeker</option>
      
    </select>
  </div>
            <div class="control-group">
              <div class="controls">
                <input required="" id="userid" name="uname" type="text" class="form-control" placeholder="Email" class="input-medium" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <div class="controls">
                <input required="" id="passwordinput" name="pass" class="form-control" type="password" placeholder="********" class="input-medium">
              </div>
            </div>

            

            <!-- Button -->
            <div class="control-group">
            <label for="errorMessage" style="text-align: center; color:red;">${errorMessage}</label>
              <div class="controls">
                <button id="signin" name="signin" class="btn orange_button" >Sign In</button>
                <a href="download?action=">Forgot Password?</a>
                </div>
             <div class="forget"> New user?    <a href="signup.jsp">Register now</a></div>
            </div>
            </fieldset>
            </form>
            
            
            
            
            
            
        </div>
      </div>
    </div>
    
    

    <div id="loading">
      <div id="loading-center">
        <div id="loading-center-absolute">
          <div class="object" id="object_one"></div>
          <div class="object" id="object_two"></div>
          <div class="object" id="object_three"></div>
          <div class="object" id="object_four"></div>
          <div class="object" id="object_five"></div>
          <div class="object" id="object_six"></div>
          <div class="object" id="object_seven"></div>
          <div class="object" id="object_eight"></div>
        </div>
      </div>
    </div>
    </div>  
    <!-- Main JS  -->
    <script type="text/javascript" src="assets/js/jquery-min.js"></script>      
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="assets/js/material.min.js"></script>
    <script type="text/javascript" src="assets/js/material-kit.js"></script>
    <script type="text/javascript" src="assets/js/jquery.parallax.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
    <script type="text/javascript" src="assets/js/waypoints.min.js"></script>
    <script type="text/javascript" src="assets/js/jasny-bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="assets/js/form-validator.min.js"></script>
    <script type="text/javascript" src="assets/js/contact-form-script.js"></script>    
    <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js"></script>
    </form>
<script>
			function onSignIn(googleUser) {
				  var profile = googleUser.getBasicProfile();
				  var imagurl=profile.getImageUrl();
				  var name=profile.getName();
				  var email=profile.getEmail();
				  document.getElementById("myImg").src = imagurl;
				  document.getElementById("name").innerHTML = name;
				  document.getElementById("myP").style.visibility = "hidden";
				  document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=JobListingController?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
			 }
</script>
</body>
</html>