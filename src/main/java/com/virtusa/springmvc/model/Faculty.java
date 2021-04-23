package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "faculty_details")
public class Faculty {

	@Id
	private String email;
	private String name;
	private String password;
	private String subjectname;
	private long phoneno;

	public Faculty() {
		super();
	}

	public Faculty(String email, String name, String password, String subjectname, long phoneno) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.subjectname = subjectname;
		this.phoneno = phoneno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public long getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}

	@Override
	public String toString() {
		return "Faculty [email=" + email + ", name=" + name + ", password=" + password + ", subjectname=" + subjectname
				+ ", phoneno=" + phoneno + "]";
	}

}
