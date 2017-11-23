package com.ufired.Servlet;

import java.io.IOException;
import java.io.PrintStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  public LogoutController() {}
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
    response.setContentType("text/html");
    

    HttpSession session = request.getSession(false);
    
    System.out.println("Sesion ID in LogoutController Page ...>>>" + session.getId());
    session.removeAttribute("jobDetailsList");
    session.removeAttribute("userInfo");
    session.removeAttribute("loginUserName");
    session.getMaxInactiveInterval();
    session.invalidate();
    request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
  }
}
