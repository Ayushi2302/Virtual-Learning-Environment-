package com.virtusa.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.model.Attendance;
import com.virtusa.springmvc.model.Marks;

import com.virtusa.springmvc.model.Student2;

@Transactional
@Repository
@Service
public class Student2DAo {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public Student2 getStudentDetails(String email) {
		return hibernateTemplate.get(Student2.class, email);

	}

	@Transactional
	public List<Marks> getStudentMarks() {
		return hibernateTemplate.loadAll(Marks.class);
	}

	@Transactional
	public List<Attendance> getStudentAttendace() {
		return hibernateTemplate.loadAll(Attendance.class);
	}

}
