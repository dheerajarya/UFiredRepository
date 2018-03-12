package com.ufired.Servlet;

import com.ufired.DAO.UFireDAO;
import com.ufired.Model.JobDetails;
import com.ufired.Model.Users;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class JobListingController
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  UFireDAO uFireDAO = new UFireDAO();
  Users users = new Users();
  private List<JobDetails> jobDetailsList = new ArrayList();
  
  public JobListingController() {}
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    String pageLoad = request.getParameter("action"); 
    String applyBtnID = request.getParameter("applyBtnID");
    String UrlSignUp = request.getParameter("action"); 
    System.out.println("Sesion ID in JobListingController Page ...>>>" + session.getId());
    
    if (session != null) {
    	List<JobDetails> jobDetailList = (List)session.getAttribute("jobDetailsList"); 
    	String userInfo = (String)session.getAttribute("userInfo");
    	String loginUserName = (String)session.getAttribute("loginUserName");
    	session.setAttribute("loginUserName", loginUserName);
    	session.setAttribute("userInfo", userInfo); 
    	if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("ContactPage"))) {
    		request.getRequestDispatcher("/WEB-INF/jsp/contact.jsp").forward(request, response);
    	} 

    	if ((UrlSignUp != null) && (UrlSignUp.equalsIgnoreCase("UrlSignUp"))) {
    		request.getRequestDispatcher("/WEB-INF/jsp/urlSignUp.jsp").forward(request, response);
    	} else if ((applyBtnID != null) && (jobDetailList != null) && (jobDetailList.size() > 0)) {
    		JobDetails localJobDetails = (JobDetails)jobDetailList.get(Integer.parseInt(applyBtnID)); 
    	}
    	else{
    		String keyword = request.getParameter("keyword");
    		String company = request.getParameter("company");
    		String category = request.getParameter("category");
    		String errorMessage = "No Jobs available for this search criteria.";

    		String filter2_4Yr = request.getParameter("2_4yrs");

    		if (((keyword != null) && (!keyword.isEmpty())) || 
    				((company != null) && (!company.isEmpty())) || (
    						(category != null) && (!category.isEmpty())))
    		{


    			int page = 1;
    			int recordsPerPage = 5;
    			List<JobDetails> jobDetailsList = uFireDAO.searchResultList(keyword, company, category, 
    					(page - 1) * recordsPerPage, 
    					recordsPerPage);
    			int noOfRecords = uFireDAO.getNoOfRecordsForSearch();
    			int noOfPages = (int)Math.ceil(noOfRecords * 1.0D / recordsPerPage);

    			session.setAttribute("jobDetailsList", jobDetailsList);
    			session.setAttribute("currentPage", Integer.valueOf(page));
    			session.setAttribute("noOfPages", Integer.valueOf(noOfPages));
    			session.setAttribute("keyword", keyword);
    			if (jobDetailsList.size() == 0) {
    				request.setAttribute("errorMessage", errorMessage);
    			} else {
    				request.setAttribute("errorMessage", "");
    			}

    			request.getRequestDispatcher("/WEB-INF/jsp/job_listing.jsp").forward(request, response);
    		} else {
    			errorMessage = "";
    			int page = 1;
    			int recordsPerPage = 5;
    			if (request.getParameter("page") != null)
    				page = Integer.parseInt(request.getParameter("page"));
    			List<JobDetails> jobDetailsList = uFireDAO.loadJobDetails(userInfo, 
    					(page - 1) * recordsPerPage, 
    					recordsPerPage);
    			int noOfRecords = uFireDAO.getNoOfRecords();
    			int noOfPages = (int)Math.ceil(noOfRecords * 1.0D / recordsPerPage);
    			session.setAttribute("jobDetailsList", jobDetailsList);
    			session.setAttribute("currentPage", Integer.valueOf(page));
    			session.setAttribute("noOfPages", Integer.valueOf(noOfPages));
    			request.getRequestDispatcher("/WEB-INF/jsp/job_listing.jsp").forward(request, response);
    		}
    	}
    }
  }
  

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    System.out.println("doPost JobListingController");
    HttpSession session = request.getSession();
    if (session != null) {
      System.out.println("Sesion ID in Job Listing Controller Page Post Method ...>>>" + session.getId());
      request.getRequestDispatcher("/WEB-INF/jsp/job_listing.jsp").forward(request, response);
    }
  }
}
