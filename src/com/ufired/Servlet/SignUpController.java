package com.ufired.Servlet;

import com.ufired.DAO.UFireDAO;
import com.ufired.Model.Users;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpController extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  public SignUpController() {}
  
  UFireDAO uFireDAO = new UFireDAO();
  private static int length = 4;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request, response);
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String message = "";
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String pageload = request.getParameter("action");
    EmailValidatior emailValidatior = new EmailValidatior();
    Users users = new Users();
    String empType = request.getParameter("empType");
    String email = request.getParameter("email");
    String firstName = request.getParameter("fName");
    String lastName = request.getParameter("lName");
    String password = request.getParameter("password");
    String telephone = request.getParameter("telephone");
    
    if ((pageload != null) && (pageload.equalsIgnoreCase("SignUpPage"))) {
      request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
    } else if ((pageload != null) && (pageload.equalsIgnoreCase("LoginPage"))) {
      request.getRequestDispatcher("/WEB-INF/jsp/LoginPage.jsp").forward(request, response);
    } else {
      users.setEmpType(empType);
      users.setEmail(email);
      users.setFirstName(firstName);
      users.setLastName(lastName);
      users.setTelephone(telephone);
      



      StringBuilder sb = new StringBuilder(password);
      String encryptPwd = encrypt(sb, 64202);
      users.setPassword(password);
      boolean emailValid = emailValidatior.validate(email);
      boolean isDuplicateRecExists = uFireDAO.checkExistingUser(email);
      if (!isDuplicateRecExists) {
        if (emailValid) {
          int count = uFireDAO.insertIntoUsers(users);
          
          String otpValue = String.valueOf(OTP(length));
          System.out.println("Count Value.." + count);
          if (count > 0) {
            message = "Registeration Successfull. Please click on Login..";
            request.setAttribute("message", message);
            
            request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
          } else {
            message = "Registeration not complete . Please try again.";
            request.setAttribute("message", message);
            request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
          }
        } else {
          message = "Email Format is wrong.";
          request.setAttribute("message", message);
          request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
        }
      }
      else {
        message = "Record Already Exists.";
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
      }
    }
  }
  
  static char[] OTP(int len)
  {
    System.out.println("Generating OTP using random() : ");
    System.out.print("You OTP is : ");
    

    String numbers = "0123456789";
    

    Random rndm_method = new Random();
    
    char[] otp = new char[len];
    
    for (int i = 0; i < len; i++)
    {


      otp[i] = 
        numbers.charAt(rndm_method.nextInt(numbers.length()));
    }
    return otp;
  }
  
  private String encrypt(StringBuilder str, int key)
  {
    for (int i = 0; i <= str.length() - 1; i++)
    {
      char c = (char)(str.charAt(i) - key);
      str.setCharAt(i, c);
    }
    return new String(str);
  }
}
