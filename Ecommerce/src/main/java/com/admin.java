package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Product;
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
  public String addProduct(@ModelAttribute("product") Product p){
       System.out.println("add product");
      if(p.getId() == 0){
      	System.out.println("product value add is" +p.getId());
          //new person, add it
          service.addProduct(p);
      }else{
      	System.out.println("product value update is" +p.getId());
          //existing person, call update
          service.updateProduct(p);
      }
       
      return "redirect:/admin";
       
  }
	@RequestMapping("/admin")
	  public String  listProduct(Model model)
	  { 
		System.out.println("listproduct");
		   model.addAttribute("product", new Product());
		   System.out.println(service.listproduct());
	        model.addAttribute("listproducts", service.listproduct());
	     
	        return "admin";
	        
	    
	     
	  }
	 @RequestMapping("/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id){
	        
	     this.service.removeproduct(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/admin";
	   }
	
}
