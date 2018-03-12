package com.ufired.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ufired.DAO.UFireDAO;
import com.ufired.Model.Users;

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
			throws ServletException, IOException{
		HttpSession session = request.getSession(true);
		String message = "";
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String pageLoad = request.getParameter("action");
		EmailValidatior emailValidatior = new EmailValidatior();
		Users users = new Users();
		String empType = request.getParameter("empType");
		String email = request.getParameter("email");
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");
		String password = request.getParameter("password");
		String telephone = request.getParameter("telephone");
		users.setEmpType(empType);
		users.setEmail(email);
		users.setFirstName(firstName);
		users.setLastName(lastName);
		users.setTelephone(telephone);  
		users.setPassword(password);
		String otpPage = request.getParameter("OtpSubmit"); 
		RequestDispatcher dispatcherSignUp = request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp");
		RequestDispatcher dispatcherOtp = request.getRequestDispatcher("/WEB-INF/jsp/Otp.jsp");
		RequestDispatcher dispatcherLogin = request.getRequestDispatcher("/WEB-INF/jsp/LoginPage.jsp");

		if(session != null){
			if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("SignUpPage"))) { 
				dispatcherSignUp.include( request, response );  
			} else if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("LoginPage"))) { 
				dispatcherLogin.include( request, response ); 
			}else if ((pageLoad != null) && (pageLoad.equalsIgnoreCase("ContactPage"))) {
				request.getRequestDispatcher("/WEB-INF/jsp/contact.jsp").forward(request, response);
			}else if ((otpPage != null) && (otpPage.equalsIgnoreCase("OtpSubmit"))) {
				String otpValue = (String) session.getAttribute("otp");
				Users users1 = (Users)session.getAttribute("users");
				String otp = request.getParameter("otp"); 
				if(otpValue != null && users1 != null && otp != null
						&& otp.equalsIgnoreCase(otpValue)){
					int count = uFireDAO.insertIntoUsers(users1);  
					//int count = 1;  
					System.out.println("Count Value.." + count);
					if (count > 0) {
						message = "Registeration Successfull. Please click on Login..";
						request.setAttribute("message", message);  
						dispatcherOtp.forward(request, response);
					} else {
						message = "Registeration not complete . Please try again.";
						request.setAttribute("message", message);
						dispatcherOtp.forward(request, response); 
					} 
				}else{				
					message = "Otp Mismatch. Please try again.";
					request.setAttribute("message", message); 
					dispatcherOtp.forward(request, response);
				} 
			} else if(request.getParameter("signUp").equalsIgnoreCase("SignUp")){
				boolean emailValid = emailValidatior.validate(email);
				boolean isDuplicateRecExists = uFireDAO.checkExistingUser(email);
				if (!isDuplicateRecExists) {
					if (emailValid) {
						String otpValue = String.valueOf(OTP(length));
						//boolean sendEmail = CommonUtils.sendEmail("dheerajufired@gmail.com", "password2@", email,otpValue);
						boolean sendEmail =true;
						System.out.println("Otp to be Entered::"+otpValue);
						session.setAttribute("users", (Users)users); 
						session.setAttribute("otp", otpValue);  
						if(sendEmail){
							session.setAttribute("users", (Users)users); 
							session.setAttribute("otp", otpValue); 
							dispatcherOtp.include(request, response); 
						}else{
							message = "Error Sending Email";
							request.setAttribute("message", message);
							dispatcherOtp.include(request, response); 
						} 
					} else {
						message = "Incorrect Email Format.";
						request.setAttribute("message", message);
						dispatcherSignUp.include(request, response);
						//request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
					}
				} else {
					message = "Email Already Exists.";
					request.setAttribute("message", message);
					dispatcherSignUp.include(request, response);
					//request.getRequestDispatcher("/WEB-INF/jsp/signup.jsp").forward(request, response);
				}
			} 
		} 
	}

	static char[] OTP(int len)
	{
		System.out.println("Generating OTP using random() : "); 
		String numbers = "0123456789"; 
		Random rndm_method = new Random(); 
		char[] otp = new char[len]; 
		for (int i = 0; i < len; i++){
			otp[i] =numbers.charAt(rndm_method.nextInt(numbers.length()));
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
