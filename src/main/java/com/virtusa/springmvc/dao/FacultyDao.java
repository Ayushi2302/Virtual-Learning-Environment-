package com.virtusa.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.springmvc.model.Faculty;

/**
 * @author Ayushi Sharma
 *
 */
@Repository
public class FacultyDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addFaculty(Faculty faculty) {
		
		this.hibernateTemplate.save(faculty);
	}
	
	public boolean validateFaculty(String email, String password) {
		
		Faculty faculty = this.hibernateTemplate.get(Faculty.class, email);
		if(faculty!=null && faculty.getPassword().equals(password)) {
			
			return true;
			
		}
		
		else {
			return false;
		}

	}

	/**
	 * @param email
	 * @param password
	 * @param newPassword
	 * @return
	 */
	//Update the Password
	@Transactional
	public boolean getUpdate(String email, String password, String newPassword) {
		
		Faculty faculty = this.hibernateTemplate.get(Faculty.class, email);
		if(faculty!=null && faculty.getPassword().equals(password)) {
			faculty.setPassword(newPassword);
			this.hibernateTemplate.save(faculty);
			return true;
		}
		else {
			return false;
		}
	
	}
	
}
