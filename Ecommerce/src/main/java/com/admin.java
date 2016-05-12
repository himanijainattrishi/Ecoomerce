package com;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.model.User;
import com.service.productservice;


@Controller
public class admin {
	@Autowired
	  productservice service;
	
	@RequestMapping("/edit/{id}")
	  public String update(@PathVariable("id") int id,Model model)
	  {
		 model.addAttribute("product",service.getProductById(id));
		 System.out.println("edit id is" +service.getProductById(id));
		 
		  model.addAttribute("listProducts",service.listproduct());
	       System.out.println("update");
		  return "admin";
	  }
	@RequestMapping(value= "/admin/add")
  public String addProduct(@Valid @ModelAttribute("product") Product p,BindingResult result,Model model,HttpServletRequest request){
       HttpSession s=request.getSession();
       if(result.hasErrors())
       {  
    	   model.addAttribute("listProducts",service.listproduct());
    	   System.out.println("validator");
    	   return "admin"; }
       else
       {
       if(p.getId() == 0)
       	{   service.addProduct(p);
       	System.out.println(s);
       MultipartFile file=p.getImage();
     //  String originalfile=file.getOriginalFilename();
       	String fileloc=s.getServletContext().getRealPath("/resource/");
       	System.out.println(fileloc);
      String filename=fileloc+"\\"+p.getId()+".jpg";
      System.out.println(filename);
      
      try{
    	  byte b[]=file.getBytes();
     FileOutputStream fos=new FileOutputStream(filename);
     fos.write(b);
		fos.close();
		System.out.println(filename);
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	   catch (Exception e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
    	   
    	
        }
       	else{
      	System.out.println("product value update is" +p.getId());
          //existing person, call update
          service.updateProduct(p);
       	}
      return "redirect:/admin";
       }
	}
	@RequestMapping("/admin")
	  public String  listProduct(Model model)
	  { 
		System.out.println("listproduct");
		   model.addAttribute("product", new Product());
		 //  System.out.println(service.listproduct());
	        model.addAttribute("listproducts", service.listproduct());
	     
	        return "admin";
	        
	    
	     
	  }
	 @RequestMapping("/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id){
	        
	     service.removeproduct(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/admin";
	   }
	 
	 @RequestMapping("/contact")
	  public ModelAndView contact()
	  {
		 User u=new User();
		  ModelAndView model=new ModelAndView("contact");
		  model.addObject("user",u);
		  return model;
	  }
	
}
