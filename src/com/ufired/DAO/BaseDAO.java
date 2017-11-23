package com.ufired.DAO;

import java.sql.SQLException;

public class BaseDAO
{
  public BaseDAO() {}
  
  public void close(java.sql.Statement stmt, java.sql.ResultSet rs) {
    if (stmt != null) {
      try {
        stmt.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    if (rs != null) {
      try {
        rs.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
}
