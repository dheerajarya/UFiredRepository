package com.ufired.Servlet;

import java.sql.Connection;

public class DBConnection
{
  public static String MY_SQL_DRIVER = "com.mysql.jdbc.Driver";
  public static String DB_NAME = "ufired";
  
  public static String MY_SQL_DB_URL = "jdbc:mysql://localhost:3306/";
  public static String DB_USER_NAME = "darya3";
  public static String DB_PASSWORD = "Welcome";

  /*public static String MY_SQL_DB_URL = "jdbc:mysql://ufireddb.cu9pvhus2u80.us-east-1.rds.amazonaws.com:3306/";
  public static String DB_USER_NAME = "root";
  public static String DB_PASSWORD = "password1!";*/
  

  public DBConnection() {}
  
  public static Connection getConnection()
  {
    Connection conn = null;
    try {
      Class.forName(MY_SQL_DRIVER);
      return java.sql.DriverManager.getConnection(MY_SQL_DB_URL + DB_NAME, DB_USER_NAME, DB_PASSWORD);
    }
    catch (Exception e) {
      e.printStackTrace(); }
    return null;
  }
}
