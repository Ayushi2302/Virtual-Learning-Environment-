package com.virtusa.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "student_info")
public class Student2 {

	@Id
	@Column(name = "STU_EMAIL")
	@NotNull
	@NotEmpty(message = "cannot be empty")
	private String email;

	@Column(name = "STU_PWD")
	@Size(min = 8, max = 12, message = "Your password must contain between 6 and 12 letters")
	private String pwd;

	@Column(name = "STU_NAME")
	private String name;

	@Column(name = "STU_DOB")
	private String dob;

	public Student2() {
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "Student [email=" + email + ", pwd=" + pwd + ", name=" + name + ", dob=" + dob + "]";
	}

}
