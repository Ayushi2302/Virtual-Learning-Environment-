package com.virtusa.springmvc.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.virtusa.springmvc.model.Contact;


@Transactional
@Repository
@Service
public class ContactDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public boolean insert(Contact contact) {

		try {
			hibernateTemplate.save(contact);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

}
