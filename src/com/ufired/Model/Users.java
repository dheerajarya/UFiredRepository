package com.ufired.Model;

public class Users { public int id;
  private String empType;
  private String email;
  private String firstName;
  private String lastName;
  private String telephone;
  private String password;
  
  public Users() {}
  
  public int getId() { return id; }
  
  public void setId(int id) {
    this.id = id;
  }
  
  public String getEmpType() { return empType; }
  
  public void setEmpType(String empType) {
    this.empType = empType;
  }
  
  public String getEmail() { return email; }
  
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getFirstName() { return firstName; }
  
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }
  
  public String getLastName() { return lastName; }
  
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }
  
  public String getTelephone() {
    return telephone;
  }
  
  public void setTelephone(String telephone) { this.telephone = telephone; }
  
  public String getPassword()
  {
    return password;
  }
  
  public void setPassword(String password) { this.password = password; }
}
