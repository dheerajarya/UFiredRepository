package com.ufired.Servlet;

import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class EmailValidatior
{
  private Pattern pattern;
  private Matcher matcher;
  private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
  
  public EmailValidatior()
  {
    pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
  }
  






  public boolean validate(String hex)
  {
    matcher = pattern.matcher(hex);
    return matcher.matches();
  }
}
