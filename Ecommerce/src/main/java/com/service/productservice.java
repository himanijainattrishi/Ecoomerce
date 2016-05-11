package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.productimp;
import com.model.Product;


@Service
@Transactional
public class productservice {
	
	productimp p;
	public void setP(productimp p) {
		this.p = p;
	}





	@Autowired
	public productservice(productimp p) {
	
		this.p = p;
	}


	
	
	
	public List<Product> listproduct()
	{
		
		return p.listproduct();
	}
	public void updateProduct(Product p1)
	{
		this.p.updateProduct(p1);
		
	}
	public Product  getProductById(int id)
	{
	return this.p.getProductById(id);
	
	}
	public void addProduct(Product p1) {
        this.p.addProduct(p1);
    }
	public void removeproduct(int id)
	{
		System.out.println("remove service start");
		this.p.removeproduct(id);
		System.out.println("remove service end");
	}
	
	

}
