package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.User;

@Repository
public class customerimp implements customerdao {
	@Autowired  
	 private SessionFactory sessionFactory;  
	public void adduser(User user) {
		System.out.println("user add");
		sessionFactory.getCurrentSession().saveOrUpdate(user); 
		System.out.println("user add1");
		
	}
	
	

}
