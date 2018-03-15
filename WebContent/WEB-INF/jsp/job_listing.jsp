<!DOCTYPE html>
<%@page import="com.ufired.Model.SearchBean"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
    
    <script src="js/jquery.js"></script>
    <script>
            $(document).ready(function(){
                document.getElementById("keyword").value = localStorage.getItem("item1");
            });
        </script>
        <script>
            $(window).on('beforeunload', function() {
                localStorage.setItem("item1",document.getElementById("keyword").value);
            });

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
                <!--  <form action="/urlSignUp" name="loadUrlSignUp" method="post"> -->
              
                <ul class="nav navbar-nav">
                  <li>
                   
               <%--  <a href="<%=request.getContextPath()%>/JobListingController?param1=uploadJob">
                    Upload Job 
                    </a>  --%>   
                    
                    <a href="JobListingController?action=UrlSignUp"><b>Upload Job</b></a>                     
                    
   
      <!-- <a href="/JobListingController?param1=uploadJob">
                    Upload Job 
                    </a> -->
    
                   
                  </li>
                 <!--  <li>
                    <a href="#">
                    Employer </a>
                  </li> -->
                  <li>
                   <a href="<%=request.getContextPath()%>/Contact?action=Contact" name="Contact">Contact</a> 
                  </li>
                </ul>
          <!--   </form>     -->
                
         
                
                <form action="Logout" method="post">
		
	 
                
                <ul class="nav navbar-nav navbar-right float-right logedin">
                  <li class="left"> Hi, 
                    <%
		if (session != null) {	 
			
			if (session.getAttribute("loginUserName") != null) {
				String name = (String) session.getAttribute("loginUserName");
				/* out.print("Hello, " + name + "  Welcome to ur Profile");
				out.println(session.getId());*/
				out.println(name);
				
			} 
			else{
				String name = (String) request.getAttribute("name");
				/* out.print("Hello, " + name + "  Welcome to ur Profile");
				out.println(session.getId());*/
				out.println(name);
			}
			
			if (session.getAttribute("jobApplyMsg") != null) {
				String jobApplyMsg = (String) session.getAttribute("jobApplyMsg"); 
			}
		}
	%> 
                  
                
                  
                  
                  <ul>
                <!--   <li>My Profile</li>
                  <li>Upload Job</li> -->
                 <!--  <li><a href="/JobListingController" value="JobListingController">Upload Job</a></li> -->
                 
                   <li><input type="submit" class="btn orange_button" value="Logout"></li>

                  
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
              
              
              
               <li class="left"><a href="post-job.html"> Hi, Pawan</a>
                  
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
      <div class="col-md-12 col-ld-12 col-xs-12 col-sm-12 search_base">
      
      <div class="container">
      <form class="form-inline" role="form" action="JobListingController"  method="get">
      <ul>
      <li class="col-md-3 col-ld-3 col-xs-12 col-sm-3 ">
      
      
           
   <div class="form-group">
   <% if(request.getParameter("keyword") != null){%>
	    <input type="keyword" class="form-control" name="keyword" id="keyword" 
	   placeholder="Enter keywords" value = <%=request.getParameter("keyword") %> maxlength="50">	
  <% }else {%>  
	  <input type="keyword" class="form-control" name="keyword" id="keyword" 
	   placeholder="Enter keywords" maxlength="50">		   
	   <% } %>   	   
   </div></li>
    <li class="col-md-3 col-ld-3 col-xs-12 col-sm-3 "><div class="form-group">
     <% if(request.getParameter("company") != null){%>
	  <input type="company" class="form-control" name="company" id="company" placeholder="Company"
	  value = <%=request.getParameter("company") %> maxlength="50">
	  <% }else {%> 
	   <input type="company" class="form-control" name="company" id="company" placeholder="Company" maxlength="50">
	  <% } %> 
 </div></li>
    <li class="col-md-3 col-ld-3 col-xs-12 col-sm-3 "><div class="form-group">
    <% if(request.getParameter("category") != null){%>
	  <input type="category" class="form-control" id="category" name="category" placeholder="Categories"
	  value = <%=request.getParameter("category") %> maxlength="100">
	   <% }else {%> 
	   <input type="category" class="form-control" id="category" name="category" placeholder="Categories"
	   maxlength="100">
	   <% } %> 
   </div></li>
  <li class="col-md-3 col-ld-3 col-xs-12 col-sm-3 ">  
  <button type="submit" class="btn orange_button" value="JobListingController">Search jobs</button></li></ul>
</form></div>
      </div>
      
      
      
      </div>
      
      
      
      
      </div>
      
      
<form action="JobListingController"  method="get">        
 <!-- Search Section End -->    
 
  <!-- listing Section starts -->    
<div class="container-fluid grey">
<div class="container">
<!-- <h2><strong>Java</strong> jobs</h2> -->
<div class="row">


<div class="col-md-9 col-ld-9 col-xs-12 col-sm-9">
 

 

<label for="errorMessage" style="text-align: center; color:red;">${errorMessage}</label>
<c:forEach var="jobDtl" items="${jobDetailsList}">

<div class="job_listing white">


<div class="col-md-4 col-ld-4 col-sm-4 col-xs-12 ">

<iframe width="100%" src="https://www.youtube.com/embed/${jobDtl.jobVideoURL}?ecver=1" base target="_parent" frameborder="0" allowfullscreen></iframe>

<!-- 
<a href="https://www.youtube.com/watch?v=bC0hlK7WGcM" data-sessionlink="feature=player-title" 
target="_blank">SHINE RECRUITER PRODUCTS AND SERVICES</a> -->
 
 
<%--  <a href="${jobDtl.jobVideoURL}" target="_blank"  >
 
 <img src="images/youtube.jpg" class="img-responsive" /> --%>
 
 
 
 
 </div> 
 
  

<div class="col-md-8 col-ld-8 col-sm-8 col-xs-12 "><h2><a href="#">${jobDtl.jobHeader} </a></h2>
<span class="companyname">${jobDtl.companyName}</span><p>${jobDtl.jobDescription}. </p>
<div class="border_grey"></div>
<ul class="col-md-8 col-ld-8 col-sm-8 col-xs-12">
<li class="years"><b></b>${jobDtl.experience}</span> </li>
<li class="location"><b></b>${jobDtl.state},  ${jobDtl.city} , ${jobDtl.country} </span> </li>
</ul>
<div class="col-md-4 col-ld-4 col-sm-4 col-xs-12 "> 
<button type="submit" class="btn orange_button" name ="applyBtnID" value="${jobDtl.id}">Apply</button></div>
</div>


</div>
</c:forEach>

<!-- 
<div class="job_listing white">

<div class="col-md-4 col-ld-4 col-sm-4 col-xs-12 ">

<iframe width="100%" src="https://www.youtube.com/embed/wdFUIHCht9Q?ecver=1" frameborder="0" allowfullscreen></iframe></div>

<div class="col-md-8 col-ld-8 col-sm-8 col-xs-12 "><h2><a href="#">Visual designer ABC Consulatancy </a></h2><span class="companyname">ABC Consulatancy</span><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean comodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus  quisque rutrum aenean imperdiet. </p>
<div class="border_grey"></div>
<ul class="col-md-8 col-ld-8 col-sm-8 col-xs-12">
<li class="years"><b></b>2 to 7 Yrs </span> </li>
<li class="location"><b></b>Washington, USA </span> </li>
</ul>
<div class="col-md-4 col-ld-4 col-sm-4 col-xs-12 "> <button type="submit" class="btn orange_button">Apply</button></div>
</div>

</div>
 -->



  <ul class="pagination pagination-sm">
    <li class="page-item ">
    <c:if test="${currentPage != 1}">
      <a class="page-link" href="JobListingController?page=${currentPage - 1}" tabindex="-1">Previous</a>
      </c:if>
    </li>
    <c:forEach begin="1" end="${noOfPages}" var="i">
				<c:choose>
					<c:when test="${currentPage eq i}">
    <li class="page-item"><a class="page-link" href="#">${i}</a></li>
    </c:when>
					<c:otherwise>
    
    <li class="page-item"><a class="page-link" href="JobListingController?page=${i}">${i}</a></li>
    </c:otherwise>
				</c:choose>
			</c:forEach>
			
    
    <li class="page-item">
      <c:if test="${currentPage lt noOfPages}">
      <a class="page-link" href="JobListingController?page=${currentPage + 1}">Next</a>
       </c:if>
    </li>
  </ul> 
  
  <!-- 
  <c:if test="${currentPage != 1}">
		<td><a href="JobListingController?page=${currentPage - 1}">Previous</a></td>
	</c:if>

	<table border="1" cellpadding="5" cellspacing="5">
		<tr>
			<c:forEach begin="1" end="${noOfPages}" var="i">
				<c:choose>
					<c:when test="${currentPage eq i}">
						<td>${i}</td>
					</c:when>
					<c:otherwise>
						<td><a href="JobListingController?page=${i}">${i}</a></td>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tr>
	</table>
	
	
	<c:if test="${currentPage lt noOfPages}">
		<td><a href="JobListingController?page=${currentPage + 1}">Next</a></td>
	</c:if>
	 -->

</div>

<%-- <table border="1" cellpadding="5" cellspacing="5">
		<c:forEach var="jobDtl" items="${jobDetailsList}">
			<tr>
				<td>${jobDtl.jobHeader}</td>
				<td>${jobDtl.email}</td>
				<td>${jobDtl.salary}</td>
				<td>${jobDtl.experience}</td>
				<td>${jobDtl.companyName}</td>
				<td><a href="${jobDtl.jobVideoURL}"</a></td>
				<td><a href ='<c:out value="${jobDtl.jobVideoURL}" />'>${jobDtl.jobVideoURL}</a></td>
			</tr>
		</c:forEach>
	</table>

	For displaying Previous link except for the 1st page
	<c:if test="${currentPage != 1}">
		<td><a href="JobListingController?page=${currentPage - 1}">Previous</a></td>
	</c:if>

	For displaying Page numbers. 
	The when condition does not display a link for the current page
	<table border="1" cellpadding="5" cellspacing="5">
		<tr>
			<c:forEach begin="1" end="${noOfPages}" var="i">
				<c:choose>
					<c:when test="${currentPage eq i}">
						<td>${i}</td>
					</c:when>
					<c:otherwise>
						<td><a href="JobListingController?page=${i}">${i}</a></td>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tr>
	</table>
	
	For displaying Next link
	<c:if test="${currentPage lt noOfPages}">
		<td><a href="JobListingController?page=${currentPage + 1}">Next</a></td>
	</c:if>
 --%>


<div class="col-md-3 col-ld-3 col-xs-12 col-sm-3 white filter">


<strong>Filter by</strong> <a href="#">Clear all</a>
 <div class="border_grey"></div>
 
 <div id="accordion" class="panel panel-primary behclick-panel">
								<div class="panel-body" >
					<div class="panel-heading " >
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse0">
								Experience<i class="indicator fa fa-caret-down pull-right" aria-hidden="true" ></i> 
							</a>
						</h4>
					</div>
					<div id="collapse0" class="panel-collapse collapse in" >
						<ul class="list-group">
							<li class="list-group-item">
								<div class="checkbox">
									<label>
										<input type="checkbox" value="" name="2_4yrs">
2 -4 years									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox" >
									<label>
										<input type="checkbox" value="">
										4-7 years
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										7 -10 years
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										10+ years
									</label>
								</div>
							</li>
						</ul>
                         
					</div>
<div class="border_grey"></div>

					<div class="panel-heading " >
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse1">
								 Location<i class="indicator fa fa-caret-down pull-right" aria-hidden="true"></i>
							</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse in" >
						<ul class="list-group">
							<li class="list-group-item">
								<div class="checkbox">
									<label>
										<input type="checkbox" value="">
										New York City; New York
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox" >
									<label>
										<input type="checkbox" value="">
										Chicago; Illinois
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										Los Angeles; California
									</label>
								</div>
							</li>
                            <li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										Houston; Texas
									</label>
								</div>
							</li>
                            <li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										New York City; New York
									</label>
								</div>
							</li>
                            <li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										Chicago; Illinois
									</label>
								</div>
							</li>
                            
						</ul>
					</div>
                <!--     <div class="border_grey"></div>

					<div class="panel-heading" >
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse3">
                             Category<i class="indicator fa fa-caret-down pull-right" aria-hidden="true"></i></a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse in">
						<ul class="list-group">
							<li class="list-group-item">
								<div class="checkbox">
									<label>
										<input type="checkbox" value="">
										red
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox" >
									<label>
										<input type="checkbox" value="">
										blue
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox"  >
									<label>
										<input type="checkbox" value="">
										green
									</label>
								</div>
							</li>
						</ul>
					</div> -->
                    <div class="border_grey"></div>

					<div class="panel-heading" >
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse2">
                             Salary<i class="indicator fa fa-caret-right pull-right" aria-hidden="true"></i></a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item">
								<div class="checkbox">
									<label>
										<input type="checkbox" value="">
										1-5
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox" >
									<label>
										<input type="checkbox" value="">
										5-10
									</label>
								</div>
							</li>
							<li class="list-group-item">
								<div class="checkbox">
									<label>
										<input type="checkbox" value="">
										10-15
									</label>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
 
 </form>
 
 </div>


</div>

</div>



</div>
 
 
 
   <!-- listing Section ends -->    

 
 
 
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
                <form action = "JobListingController" class="subscribe-box">
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