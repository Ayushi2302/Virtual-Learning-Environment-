package com.virtusa.springmvc.dao;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.virtusa.springmvc.model.Course;

@Repository
public class CourseDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addCourse(Course course)
	{
		this.hibernateTemplate.save(course);
	}
	
}
