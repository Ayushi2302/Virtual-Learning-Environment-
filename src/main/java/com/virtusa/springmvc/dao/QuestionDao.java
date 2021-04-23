package com.virtusa.springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.springmvc.model.Question;

/**
 * @author Ayushi Sharma
 *
 */
@Component
public class QuestionDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//Create Question
	@Transactional
	public void createQuestion(Question question) {
		this.hibernateTemplate.saveOrUpdate(question);
	}
	
	//Get all questions
	public List<Question> getQuestions(){
		List<Question> questions;
		questions = this.hibernateTemplate.loadAll(Question.class);
		return questions;
	}
	
	// delete the one question
	@Transactional
	public void deleteQuestion(int questionNo) {
		Question q = this.hibernateTemplate.load(Question.class, questionNo);
		this.hibernateTemplate.delete(q);
	}
	
	//get one question
	public Question getQuestion(int questionNo) {
		return this.hibernateTemplate.get(Question.class, questionNo);
		
	}

}
