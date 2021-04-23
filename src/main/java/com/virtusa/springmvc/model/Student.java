package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name ="student_details")
public class Student {

	private String name;
	@Id
	private String email;
	private long mobile;
	private String password;
	private String gender;
	public Student() {
	}
	public Student(String name, String email, long mobile, String password, String gender) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", email=" + email + ", mobile=" + mobile + ", password=" + password
				+ ", gender=" + gender + "]";
	}
	
}
