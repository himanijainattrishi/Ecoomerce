package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.User;

@Repository
public class customerimp implements customerdao 
{ 
	private SessionFactory sessionFactory;  
	
	@Autowired
	public customerimp(SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
		// TODO Auto-generated constructor stub
	}
	 
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	public void adduser(User user) 
	{
		System.out.println("user add");
		sessionFactory.getCurrentSession().saveOrUpdate(user); 
		System.out.println("user add1");
		
	}
	
	

}
