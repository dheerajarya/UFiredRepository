package com.ufired.Model;

import java.sql.Timestamp;

public class JobApplyDetails {

	private int id; 
	private int jobId;
	private String email; 
	private Timestamp datime; 
	public JobApplyDetails() {
		
	}
	
	

	public int getJobId() {
		return jobId;
	}



	public void setJobId(int jobId) {
		this.jobId = jobId;
	}



	public int getId() { 
		return id; 
		}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() { return email; }

	public void setEmail(String email) {
		this.email = email;
	}

	 
	public Timestamp getDatime() {
		return datime;
	}

	public void setDatime(Timestamp datime) { this.datime = datime; }

	 
}
