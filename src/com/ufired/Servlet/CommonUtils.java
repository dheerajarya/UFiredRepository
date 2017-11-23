package com.ufired.Servlet;

import java.security.MessageDigest;

public class CommonUtils {
  public static final String SALT = "my-salt-text";
  
  public CommonUtils() {}
  
  public static String generateHash(String input) { StringBuilder hash = new StringBuilder();
    try
    {
      MessageDigest sha = MessageDigest.getInstance("SHA-1");
      byte[] hashedBytes = sha.digest(input.getBytes());
      char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f' };
      for (int idx = 0; idx < hashedBytes.length; idx++) {
        byte b = hashedBytes[idx];
        hash.append(digits[((b & 0xF0) >> 4)]);
        hash.append(digits[(b & 0xF)]);
      }
    }
    catch (java.security.NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    

    return hash.toString();
  }
}
