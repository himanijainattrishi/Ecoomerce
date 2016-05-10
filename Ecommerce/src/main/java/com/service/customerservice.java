package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.customerdao;
import com.dao.customerimp;
import com.model.User;

@Service
@Transactional
public class customerservice {
	
	@Autowired  
	 private customerdao customerDao; 
	

 
	public void adduser(User user) {  
		System.out.println("service");
		  customerDao.adduser(user); 
		 } 
}
