package com.virtusa.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "user_info")
public class User {

	@Id
	@Column(name = "USER_EMAIL")
	@NotEmpty(message = "cannot be empty")
	private String email;

	@Column(name = "USER_PWD")
	@NotEmpty(message = "Your password must contain between 6 and 12 letters")
	private String pwd;

	@Column(name = "USER_CONF")
	private String conf;

	@Column(name = "USER_NAME")
//	@NotEmpty(message = "cannot be empty")

	private String name;

	@Column(name = "USER_DOB")
	//@NotEmpty(message = "cannot be empty")
	private String dob;

	@Column(name = "USER_GENDER")
//	@NotEmpty(message = "cannot be empty")
	private String gender;

	@Column(name = "USER_SQ_1")
	private String question1;

	@Column(name = "USER_A_1")
//	@NotEmpty(message = "cannot be empty")
	private String answer1;

	@Column(name = "USER_SQ_2")
	private String question2;

	@Column(name = "USER_A_2")
//	@NotEmpty(message = "cannot be empty")
	private String answer2;

	@Column(name = "enabled")
	private int enabled = 1;

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

	public String getConf() {
		return conf;
	}

	public void setConf(String conf) {
		this.conf = conf;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getAnswer1() {
		return answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public String getQuestion2() {
		return question2;
	}

	public void setQuestion2(String question2) {
		this.question2 = question2;
	}

	public String getAnswer2() {
		return answer2;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	@Override
	public String toString() {
		return "User [ email=" + email + ", pwd=" + pwd + ", conf=" + conf + ", name=" + name + ", dob=" + dob
				+ ", gender=" + gender + ", question1=" + question1 + ", answer1=" + answer1 + ", question2="
				+ question2 + ", answer2=" + answer2 + ", enabled=" + enabled + "]";
	}

}
