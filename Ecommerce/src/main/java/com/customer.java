package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.model.User;
import com.service.customerservice;
import com.service.productservice;

@Controller
public class customer 
{
	@Autowired
	  customerservice service;

	
@RequestMapping(value= "/register")
 public void registerPage(Model m)
	{
	
		User u=new User();
	ModelAndView model=new ModelAndView("register");
		m.addAttribute("user", u);
	}


@RequestMapping(value="/useradd")
public String addCustomer(@ModelAttribute("user") User u)
	{
	System.out.println("in controller");
    service.adduser(u);
	return "redirect:/index";
		
	
	}

}
