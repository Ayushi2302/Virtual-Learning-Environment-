package com.virtusa.springmvc.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.dao.CourseDao;
import com.virtusa.springmvc.model.Course;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;
	public void createCourse(Course course)
	{
		this.courseDao.addCourse(course);
	}
	
}
