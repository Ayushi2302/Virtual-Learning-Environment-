package com.virtusa.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.virtusa.springmvc.model.Student;

@Repository
public class StudentDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void addStudent(Student student)
	{
		this.hibernateTemplate.save(student);
	}
	public Student getStudent(String email)
	{
		return this.hibernateTemplate.get(Student.class, email);
	}
	@Transactional
	public boolean getUpdate(String email, String password, String newPassword)
	{
		Student student = this.hibernateTemplate.get(Student.class, email);
		if(student!=null && student.getPassword().equals(password))
		{
			student.setPassword(newPassword);
			this.hibernateTemplate.save(student);
			return true;
		}
		else
			return false;
	}
	public List<Student> getAllStudents(Student student)
	{
		return this.hibernateTemplate.loadAll(Student.class);
	}
	@Transactional
	public boolean deleteStudent(String emailId)
	{
		Student student = this.hibernateTemplate.get(Student.class, emailId);
		if(student!=null)
		{
			this.hibernateTemplate.delete(student);
			return true;
		}
		else
			return false;
	}
	public boolean getEmail(String emailId)
	{
		Student student = this.hibernateTemplate.get(Student.class, emailId);
		if(student!=null)
			return false;
		else
			return true;
	}
}
