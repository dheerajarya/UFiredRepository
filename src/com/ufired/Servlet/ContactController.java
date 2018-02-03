package com.ufired.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ufired.DAO.UFireDAO;





public class ContactController
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  UFireDAO uFireDAO = new UFireDAO();
  
  public ContactController() {}
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { doPost(request, response); }
  


  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    
    HttpSession session = request.getSession();
    String contact = request.getParameter("action");
    if (session != null) {
    	if ((contact != null) && (contact.equalsIgnoreCase(contact))) {
            request.getRequestDispatcher("/WEB-INF/jsp/contact.jsp").forward(request, response);
          }
      
    }
    }
}
