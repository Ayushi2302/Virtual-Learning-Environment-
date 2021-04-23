package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "course_details")
public class Course {
	private String studentName;
	private String courseName;
	@Id
	private String email;
	private String password;
	public Course() {
	}
	public Course(String studentName, String courseName, String email, String password) {
		super();
		this.studentName = studentName;
		this.courseName = courseName;
		this.email = email;
		this.password = password;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
