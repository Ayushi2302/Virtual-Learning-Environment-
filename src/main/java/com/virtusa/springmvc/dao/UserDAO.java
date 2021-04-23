package com.virtusa.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.model.User;



@Transactional
@Repository
@Service
public class UserDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	private Logger logger = Logger.getLogger(UserDAO.class);

	@Transactional
	public void insert(User user) {

		hibernateTemplate.save(user);
		
	}

	@Transactional
	public List<User> getAllUser() {

		List<User> user = hibernateTemplate.loadAll(User.class);

		logger.info(user);
		return user;
	}

	@Transactional
	public void delete(User u) {
		hibernateTemplate.delete(u);
	}

	@Transactional
	public void update(User u) {
		hibernateTemplate.update(u);
	}

	@Transactional
	public User getUser(String email) {
		User user = hibernateTemplate.get(User.class, email);
		logger.info(user);
		return user;
	}

}
