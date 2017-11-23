package com.ufired.Servlet;

import com.ufired.DAO.UFireDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




public class ForgotPasswordController
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  UFireDAO uFireDAO = new UFireDAO();
  
  public ForgotPasswordController() {}
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    HttpSession session = request.getSession();
    String errorMessage = "";
    String password = null;
    String email = request.getParameter("email");
    

    if (email != null) {
      password = uFireDAO.fetchPassword(email);
      if (password == null) {
        errorMessage = "Record doesn't exist. Please give proper email id.";
        request.setAttribute("errorMessage", errorMessage);
        request.getRequestDispatcher("/WEB-INF/jsp/ForgotPassword.jsp").forward(request, response);


      }
      else
      {

        errorMessage = "Password Sent to '" + email + "'. Please check your inbox.";
        request.setAttribute("errorMessage", errorMessage);
        request.getRequestDispatcher("/WEB-INF/jsp/ForgotPassword.jsp").forward(request, response);
      }
    }
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
