package com.virtusa.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.dao.FacultyDao;
import com.virtusa.springmvc.model.Faculty;

/**
 * @author Ayushi Sharma
 *
 */
@Service
public class FacultyService {

	@Autowired
	private FacultyDao facultyDao;

	public void createFaculty(Faculty faculty) {

		this.facultyDao.addFaculty(faculty);
	}
    //Validation method for email
	public boolean validate(String email, String password) {
		boolean result;
		result = this.facultyDao.validateFaculty(email, password);
		return result;

	}
     
	//update the password method
	public boolean update(String email, String password, String newPassword) {
		boolean result;
		result = this.facultyDao.getUpdate(email, password, newPassword);
		return result;

	}

}
