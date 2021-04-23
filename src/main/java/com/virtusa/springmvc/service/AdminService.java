package com.virtusa.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.dao.StudentDao;
import com.virtusa.springmvc.model.Student;

@Service
public class AdminService {

	@Autowired
	private StudentDao studentDao;
	public List<Student> getStudents(Student student)
	{
		return this.studentDao.getAllStudents(student);
	}
	
	public boolean deleteStudent(String emailId)
	{
		return this.studentDao.deleteStudent(emailId);
	}
}
