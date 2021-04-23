package com.virtusa.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.dao.UserDAO;
import com.virtusa.springmvc.model.User;

@Service
public class UserService {

	@Autowired
	UserDAO userDAO;

	public boolean verifyRegister(User usr) {
		for (User u : userDAO.getAllUser()) {
			if (usr.getEmail().equals(u.getEmail()) || !usr.getPwd().equals(usr.getConf())) {
				return false;
			}
		}

		return true;

	}

	public boolean verifyLogin(User usr) {
		User user = userDAO.getUser(usr.getEmail());
		if (usr.getPwd().equals(user.getPwd())) {
			return true;
		} 
		
		return false;
		
	}

	public boolean verifyAnswer(User usr) {
		User user = userDAO.getUser(usr.getEmail());
		if (usr.getAnswer1().trim().equals(user.getAnswer1().trim())
				&& usr.getAnswer2().trim().equals(user.getAnswer2().trim())) {
			return true;
		}
		return false;

	}

	public User getUserDetails(String email) {
		return userDAO.getUser(email);

	}
	
	public void getUserInsert(User user) {
		 userDAO.insert(user);

	}
	
	public void getUserUpdate(User user) {
		 userDAO.update(user);

	}
}
