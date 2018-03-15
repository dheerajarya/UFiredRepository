package com.ufired.Servlet;

import com.ufired.DAO.UFireDAO;
import com.ufired.Model.JobDetails;
import java.io.IOException;
import java.io.PrintStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





public class UrlSignUpController
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  UFireDAO uFireDAO = new UFireDAO();
  
  public UrlSignUpController() {}
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { doPost(request, response); }
  


  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String experience = request.getParameter("experience");
    String skills = request.getParameter("skills");
    String company = request.getParameter("company");
    String videoURL = request.getParameter("videoURL");
    String salary = request.getParameter("salary");
    String comments = request.getParameter("comments");
    
    String loggedUserEmail = "";
    JobDetails jobDetails = null;
    String message = "";
    String finalURL = "";
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    String country = request.getParameter("country");
    String zipCode = request.getParameter("zipCode");
    
    String UrlSignUp = request.getParameter("action");
    
    if ((videoURL != null) && (!videoURL.isEmpty())) {
      int beginIndex = videoURL.indexOf('=');
      finalURL = videoURL.substring(beginIndex + 1, videoURL.length());
    }
    HttpSession session = request.getSession();
    if (session != null) {
      System.out.println("Sesion ID in UrlSignUpController Page ...>>>" + session.getId());
      String userEmail = (String)session.getAttribute("userInfo");
      String loginUserName = (String)session.getAttribute("loginUserName");
      session.setAttribute("loginUserName", loginUserName);
      session.setAttribute("userInfo", userEmail);
      
      if ((UrlSignUp != null) && (UrlSignUp.equalsIgnoreCase(UrlSignUp))) {
        session.setAttribute("userInfo", loggedUserEmail);
        request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
      } else if ((skills != null) && (userEmail != null)) {
        if (userEmail != null) {
          jobDetails = new JobDetails();
          jobDetails.setJobHeader(skills);
          jobDetails.setCompanyName(company);
          jobDetails.setJobVideoURL(finalURL);
          jobDetails.setSalary(salary);
          jobDetails.setExperience(experience);
          jobDetails.setJobDescription(comments);
          jobDetails.setEmail(userEmail);
          jobDetails.setCountry(country);
          jobDetails.setState(state);
          jobDetails.setCity(city);
          jobDetails.setJobURLFull(videoURL);
          jobDetails.setUserInfo(userEmail);
          if (zipCode != null) {
            jobDetails.setZipCode(Integer.parseInt(zipCode));
          }
          
          int count = uFireDAO.insertIntoJobDetails(jobDetails);
          
          if (count > 0) {
            message = "Job Uploaded Successully";
            request.setAttribute("message", message);
            session.setAttribute("userInfo", userEmail);
            request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
          } else {
            message = "Job Upload Fail. Please try again.";
            request.setAttribute("message", message);
            session.setAttribute("userInfo", userEmail);
            request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
          }
        }
      } else {
    	  session.setAttribute("userInfo", userEmail);
        request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
      }
    } else {
      message = "Job Upload Fail. Please try again.";
      request.setAttribute("message", message); 
      request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
    }
  }
}
