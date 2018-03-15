package com.ufired.DAO;

import com.ufired.Model.JobApplyDetails;
import com.ufired.Model.JobDetails;
import com.ufired.Model.Users;
import com.ufired.Servlet.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UFireDAO extends BaseDAO
{
  private int noOfRecords;
  private int noOfRecordsForSearch;
  
  public UFireDAO() {}
  
  BaseDAO baseDAO = new BaseDAO();
  
  public int insertIntoUsers(Users users) {
    Connection con = DBConnection.getConnection();
    System.out.println("Con value::" + con);
    int row = 0;
    if (con != null) {
      String query = " insert into USERS ( EMP_TYPE,EMAIL, FIRST_NAME, LAST_NAME, TELPHONE,USER_INFO,DATE_TIME,PASSWORD,ACTIVATE_FLAG) values ( ?, ?, ?, ?,  ?,  ?, ?, ? , ?)";
      
      PreparedStatement preparedStmt = null;
      try {
        preparedStmt = con.prepareStatement(query);
       // preparedStmt.setInt(1, users.getId());
        preparedStmt.setString(1, users.getEmpType());
        preparedStmt.setString(2, users.getEmail());
        preparedStmt.setString(3, users.getFirstName());
        preparedStmt.setString(4, users.getLastName());
        preparedStmt.setString(5, users.getTelephone());
        preparedStmt.setString(6, users.getFirstName());
        preparedStmt.setTimestamp(7, getcurrentDateTime());
        preparedStmt.setString(8, users.getPassword());
        preparedStmt.setString(9, "N");
        row = preparedStmt.executeUpdate();
        preparedStmt.close();
        con.close();
      }
      catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return row;
  }
  
  private java.sql.Timestamp getcurrentDateTime()
  {
    java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
    return date;
  }
  
  public String fetchPassword(String email) {
    Connection con = DBConnection.getConnection();
    ResultSet rs = null;
    String password = null;
    Statement st = null;
    if (con != null) {
      String query = "select PASSWORD from USERS where email =  '" + email + "' ";
      try {
        st = con.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {
          password = rs.getString("PASSWORD");
        }
        con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, rs);
      }
    }
    return password;
  }
  
  public java.util.List<Users> fetchUsers(String emailID, String empType) {
    Connection con = DBConnection.getConnection();
    StringBuilder sql = new StringBuilder();
    ResultSet sqlzindpf1rs = null;
    java.util.List<Users> usersList = null;
    Statement st = null;
    sql.append(" SELECT EMP_TYPE,EMAIL, FIRST_NAME, LAST_NAME, TELPHONE ");
    sql.append(" FROM USERS where EMAIL = '" + emailID + "' AND  EMP_TYPE = '" + empType + "' ");
    System.out.println("Con value::" + con);
    if (con != null) {
      try {
        st = con.createStatement();
        sqlzindpf1rs = st.executeQuery(sql.toString());
        usersList = new java.util.ArrayList();
        while (sqlzindpf1rs.next()) {
          Users users = new Users();
          users.setEmpType(sqlzindpf1rs.getString(1));
          users.setEmail(sqlzindpf1rs.getString(2));
          users.setFirstName(sqlzindpf1rs.getString(3));
          users.setLastName(sqlzindpf1rs.getString(4));
          users.setTelephone(sqlzindpf1rs.getString(5));
          usersList.add(users);
        }
        con.close();
      }
      catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, sqlzindpf1rs);
      }
    }
    
    return usersList;
  }
  

  public java.util.List<JobDetails> loadJobDetails(String userInfo, int offset, int noOfRecords)
  {
    Connection con = DBConnection.getConnection();
    String query = "select SQL_CALC_FOUND_ROWS * from JOB_DETAILS limit " + 
      offset + ", " + noOfRecords;
    java.util.List<JobDetails> list = new java.util.ArrayList();
    JobDetails jobDetails = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      stmt = con.createStatement();
      rs = stmt.executeQuery(query);
      while (rs.next()) {
        jobDetails = new JobDetails();
        jobDetails.setId(rs.getInt("ID"));
        jobDetails.setJobHeader(rs.getString("JOB_HEADER"));
        jobDetails.setEmail(rs.getString("EMAIL"));
        jobDetails.setSalary(rs.getString("SALARY"));
        jobDetails.setJobVideoURL(rs.getString("JOB_VIDEO_URL"));
        jobDetails.setExperience(rs.getString("EXPERIENCE"));
        jobDetails.setCompanyName(rs.getString("COMPANY_NAME"));
        jobDetails.setJobDescription(rs.getString("JOB_DESCRIPTION"));
        jobDetails.setCountry(rs.getString("COUNTRY"));
        jobDetails.setState(rs.getString("STATE"));
        jobDetails.setCity(rs.getString("CITY"));
        jobDetails.setZipCode(rs.getInt("ZIPCODE"));
        list.add(jobDetails);
      }
      rs = stmt.executeQuery("SELECT FOUND_ROWS()");
      if (rs.next())
        this.noOfRecords = rs.getInt(1);
      con.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      baseDAO.close(stmt, rs);
    }
    return list;
  }
  
  public int getNoOfRecords() {
    return noOfRecords;
  }
  

  public java.util.List<JobDetails> searchResultList(String keyword, String company, String category, int offset, int noOfRecords)
  {
    boolean keywordFlg = false;
    boolean companyFlg = false;
    boolean categoryFlg = false;
    Connection con = DBConnection.getConnection();
    StringBuilder sbQuery = new StringBuilder();
    sbQuery.append("select SQL_CALC_FOUND_ROWS * from JOB_DETAILS where  ");
    if ((keyword != null) && (!keyword.isEmpty()) && 
      ((company == null) || (company.isEmpty())) && (
      (category == null) || (category.isEmpty()))) {
      sbQuery.append(" JOB_HEADER like '%" + keyword + "%' ");
    } else {
      keywordFlg = true;
    }
    
    if ((company != null) && (!company.isEmpty()) && 
      ((keyword == null) || (keyword.isEmpty())) && (
      (category == null) || (category.isEmpty()))) {
      sbQuery.append(" COMPANY_NAME like '%" + company + "%' ");
    } else {
      companyFlg = true;
    }
    
    if ((category != null) && (!category.isEmpty()) && 
      ((company == null) || (company.isEmpty())) && (
      (keyword == null) || (keyword.isEmpty()))) {
      sbQuery.append(" JOB_DESCRIPTION like '%" + category + "%' ");
    } else {
      categoryFlg = true;
    }
    
    if ((category != null) && (!category.isEmpty()) && 
      (company != null) && (!company.isEmpty()) && 
      (keyword != null) && (!keyword.isEmpty())) {
      categoryFlg = false;
      companyFlg = false;
      keywordFlg = false;
      sbQuery.append(" JOB_HEADER like '%" + keyword + "%' ");
      sbQuery.append(" AND JOB_DESCRIPTION like '%" + category + "%' ");
      sbQuery.append(" AND COMPANY_NAME like '%" + company + "%' ");
    } else if ((category != null) && (!category.isEmpty()) && 
      (company != null) && (!company.isEmpty()) && 
      (keyword == null) && (keyword.isEmpty())) {
      categoryFlg = false;
      companyFlg = false;
      keywordFlg = false;
      sbQuery.append(" JOB_DESCRIPTION like '%" + category + "%' ");
      sbQuery.append(" AND COMPANY_NAME like '%" + company + "%' ");
    } else if ((category == null) && (category.isEmpty()) && 
      (company != null) && (!company.isEmpty()) && 
      (keyword != null) && (!keyword.isEmpty())) {
      categoryFlg = false;
      companyFlg = false;
      keywordFlg = false;
      sbQuery.append(" JOB_HEADER like '%" + keyword + "%' ");
      sbQuery.append(" AND COMPANY_NAME like '%" + company + "%' ");
    } else if ((category != null) && (!category.isEmpty()) && 
      (company == null) && (company.isEmpty()) && 
      (keyword != null) && (!keyword.isEmpty())) {
      categoryFlg = false;
      companyFlg = false;
      keywordFlg = false;
      sbQuery.append(" JOB_HEADER like '%" + keyword + "%' ");
      sbQuery.append(" AND JOB_DESCRIPTION like '%" + category + "%' ");
    }
    
    if ((keywordFlg) && (companyFlg) && (categoryFlg)) {
      sbQuery.append(" email like '%.gmail.com%'  ");
    }
    sbQuery.append(" limit " + offset + ", " + noOfRecords);
    java.util.List<JobDetails> list = new java.util.ArrayList();
    JobDetails jobDetails = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      stmt = con.createStatement();
      rs = stmt.executeQuery(sbQuery.toString());
      while (rs.next()) {
        jobDetails = new JobDetails();
        jobDetails.setId(rs.getInt("ID"));
        jobDetails.setJobHeader(rs.getString("JOB_HEADER"));
        jobDetails.setEmail(rs.getString("EMAIL"));
        jobDetails.setSalary(rs.getString("SALARY"));
        jobDetails.setJobVideoURL(rs.getString("JOB_VIDEO_URL"));
        jobDetails.setExperience(rs.getString("EXPERIENCE"));
        jobDetails.setCompanyName(rs.getString("COMPANY_NAME"));
        jobDetails.setJobDescription(rs.getString("JOB_DESCRIPTION"));
        jobDetails.setCountry(rs.getString("COUNTRY"));
        jobDetails.setState(rs.getString("STATE"));
        jobDetails.setCity(rs.getString("CITY"));
        jobDetails.setZipCode(rs.getInt("ZIPCODE"));
        list.add(jobDetails);
      }
      rs = stmt.executeQuery("SELECT FOUND_ROWS()");
      if (rs.next())
        noOfRecordsForSearch = rs.getInt(1);
    } catch (SQLException e) {
      e.printStackTrace();
      try
      {
        baseDAO.close(stmt, rs);
        if (con != null)
          con.close();
      } catch (SQLException ex) {
        ex.printStackTrace();
      }
    }
    finally
    {
      try
      {
        baseDAO.close(stmt, rs);
        if (con != null)
          con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return list;
  }
  
  public int getNoOfRecordsForSearch()
  {
    return noOfRecordsForSearch;
  }
  

  static char[] OTP(int len)
  {
    String numbers = "0123456789";
    
    java.util.Random rndm_method = new java.util.Random();
    char[] otp = new char[len];
    for (int i = 0; i < len; i++)
    {


      otp[i] = 
        numbers.charAt(rndm_method.nextInt(numbers.length()));
    }
    return otp;
  }
  
  public boolean updateUsers(String email) {
    Connection con = DBConnection.getConnection();
    StringBuilder sb = new StringBuilder("");
    boolean statuz = true;
    sb.append("UPDATE USERS ");
    sb.append(" SET ACTIVATE_FLAG = 'A' where EMAIL =?");
    PreparedStatement ps = null;
    try {
      ps = con.prepareStatement(sb.toString());
      ps.setString(1, email);
      ps.executeUpdate();
      con.close();
    } catch (SQLException e) {
      statuz = false;
    }
    return statuz;
  }
  
  public String getLoginUserName(String email) {
    String firstName = null;
    Connection con = DBConnection.getConnection();
    ResultSet rs = null;
    Statement st = null;
    if (con != null) {
      String query = "select FIRST_NAME from USERS where email =  '" + email + "' ";
      try {
        st = con.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {
          firstName = rs.getString("FIRST_NAME");
        }
        con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, rs);
      }
    }
    return firstName;
  }
  
  public boolean checkExistingUser(String email)
  {
    boolean isRecordExists = false;
    Connection con = DBConnection.getConnection();
    ResultSet rs = null;
    Statement st = null;
    if (con != null) {
      String query = "select EMAIL from USERS where email =  '" + email + "' ";
      try {
        st = con.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {
          isRecordExists = true;
        }
        con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, rs);
      }
    }
    return isRecordExists;
  }
  
  public int insertIntoJobDetails(JobDetails jobDetails) {
    Connection con = DBConnection.getConnection();
    System.out.println("Con value::" + con);
    int row = 0;
    if (con != null) {
      String query = " insert into JOB_DETAILS ( JOB_HEADER,COMPANY_NAME, JOB_DESCRIPTION, EXPERIENCE, JOB_VIDEO_URL,JOB_VIDEO_FULL_URL,SALARY,EMAIL,COUNTRY,STATE,CITY,ZIPCODE,USER_INFO,DATE_TIME) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
      
      PreparedStatement preparedStmt = null;
      try {
        preparedStmt = con.prepareStatement(query);
       // preparedStmt.setInt(1, jobDetails.getId());
        preparedStmt.setString(1, jobDetails.getJobHeader());
        preparedStmt.setString(2, jobDetails.getCompanyName());
        preparedStmt.setString(3, jobDetails.getJobDescription());
        preparedStmt.setString(4, jobDetails.getExperience());
        preparedStmt.setString(5, jobDetails.getJobVideoURL());
        preparedStmt.setString(6, jobDetails.getJobURLFull());
        preparedStmt.setString(7, jobDetails.getSalary());
        preparedStmt.setString(8, jobDetails.getEmail());
        preparedStmt.setString(9, jobDetails.getCountry());
        preparedStmt.setString(10, jobDetails.getState());
        preparedStmt.setString(11, jobDetails.getCity());
        preparedStmt.setInt(12, jobDetails.getZipCode());
        preparedStmt.setString(13, jobDetails.getEmail());
        preparedStmt.setTimestamp(14, getcurrentDateTime());
        
        row = preparedStmt.executeUpdate();
        preparedStmt.close();
        con.close();
      }
      catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return row;
  }
  
  public boolean checkExistingUserInJobDetails(String email)
  {
    boolean isRecordExists = false;
    Connection con = DBConnection.getConnection();
    ResultSet rs = null;
    Statement st = null;
    if (con != null) {
      String query = "select EMAIL from JOB_DETAILS where email =  '" + email + "' ";
      try {
        st = con.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {
          isRecordExists = true;
        }
        con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, rs);
      }
    }
    return isRecordExists;
  }
  
  public int insertIntoJobApplyDtls(JobApplyDetails jobApplyDetails) {
	    Connection con = DBConnection.getConnection();
	    System.out.println("Con value::" + con);
	    int row = 0;
	    if (con != null) {
	      String query = " insert into JOB_APPLY_DETAILS ( JOB_ID,JOB_APPLIED_BY,USER_INFO,DATE_TIME) values ( ?, ?, ?, ?)";
	      
	      PreparedStatement preparedStmt = null;
	      try {
	        preparedStmt = con.prepareStatement(query);
	       // preparedStmt.setInt(1,jobApplyDetails.getId() );
	        preparedStmt.setInt(1, jobApplyDetails.getJobId());
	        preparedStmt.setString(2, jobApplyDetails.getEmail());
	        preparedStmt.setString(3, jobApplyDetails.getEmail()); 
	        preparedStmt.setTimestamp(4, getcurrentDateTime()); 
	        row = preparedStmt.executeUpdate();
	        preparedStmt.close();
	        con.close();
	      }
	      catch (SQLException e) {
	        e.printStackTrace();
	      }
	    }
	    return row;
	  }
  
  public boolean checkExistingUserInJobApplyDtls(JobDetails jobDetails)
  {
    boolean isRecordExists = false;
    Connection con = DBConnection.getConnection();
    ResultSet rs = null;
    Statement st = null;
    if (con != null) {
      String query = "select USER_INFO from JOB_APPLY_DETAILS where JOB_APPLIED_BY =  '" + jobDetails.getEmail() + "' and  JOB_ID = '" + jobDetails.getId() + "' ";
      try {
        st = con.createStatement();
        rs = st.executeQuery(query);
        while (rs.next()) {
          isRecordExists = true;
        }
        con.close();
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        baseDAO.close(st, rs);
      }
    }
    return isRecordExists;
  }
}
