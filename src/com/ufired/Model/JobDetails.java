package com.ufired.Model;

import java.sql.Timestamp;

public class JobDetails { private int id;
  private String jobHeader;
  private String email;
  private String companyName;
  private String jobDescription;
  private String jobVideoURL;
  private String salary;
  private String country;
  private String userInfo;
  private String experience;
  private Timestamp datime;
  private String state;
  private String city;
  private int zipCode;
  private String jobURLFull;
  
  public JobDetails() {}
  
  public int getId() { return id; }
  
  public void setId(int id) {
    this.id = id;
  }
  
  public String getEmail() { return email; }
  
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getJobHeader() { return jobHeader; }
  
  public void setJobHeader(String jobHeader) {
    this.jobHeader = jobHeader;
  }
  
  public String getCompanyName() { return companyName; }
  
  public void setCompanyName(String companyName) {
    this.companyName = companyName;
  }
  
  public String getJobDescription() { return jobDescription; }
  
  public void setJobDescription(String jobDescription) {
    this.jobDescription = jobDescription;
  }
  
  public String getJobVideoURL() { return jobVideoURL; }
  
  public void setJobVideoURL(String jobVideoURL) {
    this.jobVideoURL = jobVideoURL;
  }
  
  public String getSalary() { return salary; }
  
  public void setSalary(String salary) {
    this.salary = salary;
  }
  
  public String getCountry() { return country; }
  
  public void setCountry(String country) {
    this.country = country;
  }
  
  public String getUserInfo() { return userInfo; }
  
  public void setUserInfo(String userInfo) {
    this.userInfo = userInfo;
  }
  
  public String getExperience() {
    return experience;
  }
  
  public void setExperience(String experience) { this.experience = experience; }
  
  public Timestamp getDatime() {
    return datime;
  }
  
  public void setDatime(Timestamp datime) { this.datime = datime; }
  
  public String getState() {
    return state;
  }
  
  public void setState(String state) { this.state = state; }
  
  public String getCity() {
    return city;
  }
  
  public void setCity(String city) { this.city = city; }
  
  public int getZipCode() {
    return zipCode;
  }
  
  public void setZipCode(int zipCode) { this.zipCode = zipCode; }
  
  public String getJobURLFull() {
    return jobURLFull;
  }
  
  public void setJobURLFull(String jobURLFull) { this.jobURLFull = jobURLFull; }
}
