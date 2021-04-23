package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Marks {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int mid;
	private String marksofstu;
	private String sname;
	private String subject;

	public Marks() {
		super();
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMarksofstu() {
		return marksofstu;
	}

	public void setMarksofstu(String marksofstu) {
		this.marksofstu = marksofstu;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public String toString() {
		return " ----- " + marksofstu + " ------ " + sname + " ----- " + subject + "";
	}

}
