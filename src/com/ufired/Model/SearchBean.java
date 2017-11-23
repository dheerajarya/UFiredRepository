package com.ufired.Model;

public class SearchBean {
  private String keyword;
  private String company;
  private String category;
  
  public SearchBean() {}
  
  public String getKeyword() { if (keyword == null) {
      keyword = new String();
    }
    return keyword;
  }
  
  public void setKeyword(String keyword) { this.keyword = keyword; }
  
  public String getCompany() {
    if (company == null) {
      company = new String();
    }
    return company;
  }
  
  public void setCompany(String company) { this.company = company; }
  
  public String getCategory() {
    if (category == null) {
      category = new String();
    }
    return category;
  }
  
  public void setCategory(String category) { this.category = category; }
}
