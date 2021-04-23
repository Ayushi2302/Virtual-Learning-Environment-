package com.virtusa.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.dao.StudentDao;
import com.virtusa.springmvc.model.Student;

@Service
public class StudentService {

	@Autowired
	private StudentDao studentDao;

	public void createStudent(Student student) {
		this.studentDao.addStudent(student);
	}

	public Student validateStudent(String email) {
		return this.studentDao.getStudent(email);
	}

	public boolean updateStudent(String email, String password, String newPassword) {
		return this.studentDao.getUpdate(email, password, newPassword);
	}

	public boolean checkEmail(String emailId) {
		return this.studentDao.getEmail(emailId);
	}
}
