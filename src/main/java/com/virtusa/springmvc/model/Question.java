package com.virtusa.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

/**
 * @author Ayushi Sharma
 *
 */
@Entity
@Table(name = "question_details")
public class Question {

	@Id
	private int questionNo;
	@NotBlank(message = "Subject Name can't be empty")
	private String subjectName;
	@NotBlank(message = "Question Description can't be empty")
	@Size(min = 10, max = 100)
	private String questionDescription;

	public Question() {
		super();
	}

	public Question(int questionNo, String subjectName, String questionDescription) {
		super();
		this.questionNo = questionNo;
		this.subjectName = subjectName;
		this.questionDescription = questionDescription;
	}

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getQuestionDescription() {
		return questionDescription;
	}

	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}

	@Override
	public String toString() {
		return "Question [questionNo=" + questionNo + ", subjectName=" + subjectName + ", questionDescription="
				+ questionDescription + "]";
	}

}