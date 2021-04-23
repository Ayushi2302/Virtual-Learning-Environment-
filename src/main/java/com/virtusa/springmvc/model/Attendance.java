package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Attendance {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int aid;
	private String month;
	private String sname;
	private String attend;

	public Attendance() {
		super();
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getAttendance() {
		return attend;
	}

	public void setAttendance(String attend) {
		this.attend = attend;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public String toString() {
		return " ----- " + month + " ----- " + sname + " ----- " + attend + "";
	}

}
