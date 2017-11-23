package com.ufired.Servlet;

import com.ufired.DAO.UFireDAO;
import com.ufired.Model.JobDetails;
import com.ufired.Model.Users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController
extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	UFireDAO uFireDAO = new UFireDAO();
	Users users = new Users();

	public LoginController() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { doPost(request, response); }



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userInfo = request.getParameter("uname");
		String password = request.getParameter("pass");
		String empType = request.getParameter("empType");
		HttpSession session = request.getSession(true);
		if (session != null) {
			String pageLoad = request.getParameter("action");
			if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("LoginPage")))
			{
				session.removeAttribute("jobDetailsList");
				session.removeAttribute("userInfo");
				session.removeAttribute("loginUserName");
				request.getRequestDispatcher("/WEB-INF/jsp/LoginPage.jsp").forward(request, response);
			} else if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("SignUpPage"))) {
				request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
			} else if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("ForgotPwd"))) {
				request.getRequestDispatcher("/WEB-INF/jsp/ForgotPassword.jsp").forward(request, response);
			}
			/*else if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("RecordResume"))) {
    	  try {
    	  CvCapture capture = cvCreateCameraCapture(CV_CAP_ANY);
    	  cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH, 320);
    	  cvSetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT, 240);

    	  cvNamedWindow("Video1",0);
    	  FFmpegFrameRecorder recorder=new FFmpegFrameRecorder("RecordVid1", 320, 240);
    	  recorder.setVideoCodec(CV_FOURCC('M','J','P','G'));
    	  recorder.setFrameRate(15);
    	  recorder.setPixelFormat(1);

			recorder.start();

    	  IplImage img1;
    	  for(;;){
    		  img1=cvQueryFrame(capture);
    		  if(img1==null)break;
    		  cvShowImage("Video1", img1);
    		  char c= (char) cvWaitKey(15);
    		  if(c=='q')break;

    	  }
    	  recorder.stop();
    	  cvDestroyWindow("Video1");
    	  cvReleaseCapture(capture);


    	  } catch (Exception e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}

      }*/
			else if ((userInfo == null) || (password == null)) {
				request.getRequestDispatcher("/WEB-INF/jsp/LoginPage.jsp").forward(request, response);
			}
			else 
			{
				try {
					boolean isAuthenticatedUser = login(userInfo, password).booleanValue();
					System.out.println("Sesion ID in Login Controller Page ...>>>" + session.getId());

					if (isAuthenticatedUser) {
						session.setAttribute("userInfo", userInfo);
						int page = 1;
						int recordsPerPage = 5;
						if (request.getParameter("page") != null)
							page = Integer.parseInt(request.getParameter("page"));
						List<JobDetails> jobDetailsList = uFireDAO.loadJobDetails(userInfo, 
								(page - 1) * recordsPerPage, 
								recordsPerPage);
						int noOfRecords = uFireDAO.getNoOfRecords();
						int noOfPages = (int)Math.ceil(noOfRecords * 1.0D / recordsPerPage);
						String loginUserName = uFireDAO.getLoginUserName(userInfo);
						if (loginUserName != null)
							request.setAttribute("loginUserName", loginUserName);
						session.setAttribute("jobDetailsList", jobDetailsList);
						session.setAttribute("noOfPages", Integer.valueOf(noOfPages));
						session.setAttribute("currentPage", Integer.valueOf(page));
						session.setAttribute("loginUserName", loginUserName);
						System.out.println("logged user email logincontroller: " + userInfo);
						System.out.println("logged user Name logincontroller: " + loginUserName);
						request.getRequestDispatcher("/WEB-INF/jsp/job_listing.jsp").forward(request, response);
					} else {
						String errorMessage = "Either user name or password is wrong.";
						request.setAttribute("errorMessage", errorMessage);
						request.getRequestDispatcher("/WEB-INF/jsp/LoginPage.jsp").forward(request, response);
					}
				}
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
	}

	public Boolean login(String email, String password) throws SQLException {
		Boolean isAuthenticated = Boolean.valueOf(false);
		String dbStoredPwd = uFireDAO.fetchPassword(email);
		if (dbStoredPwd != null) {
			StringBuilder sb = new StringBuilder(dbStoredPwd);
			String descryptPwd = decrypt(sb, 64202);
			if (dbStoredPwd.equals(password)) {
				isAuthenticated = Boolean.valueOf(true);
			}
		} else {
			isAuthenticated = Boolean.valueOf(false);
		}

		return isAuthenticated;
	}

	private String decrypt(StringBuilder str, int key)
	{
		for (int i = 0; i <= str.length() - 1; i++)
		{
			char c = (char)(str.charAt(i) + key);
			str.setCharAt(i, c);
		}
		return new String(str);
	}
}
