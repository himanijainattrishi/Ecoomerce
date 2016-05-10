package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.productimp;
import com.model.Product;


@Service("service")
public class productservice {
	@Autowired
	productimp p;
	public productservice()
	{
		p=new productimp();
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
		this.p.removeproduct(id);
	}
	
	

}
