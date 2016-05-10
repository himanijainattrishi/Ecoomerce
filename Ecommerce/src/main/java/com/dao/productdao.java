package com.dao;

import java.util.List;

import com.model.Product;



public interface productdao {
	public List<Product> listproduct();
	public void updateProduct(Product p);
	//public int addProduct(String name,String brand,int price );
	public Product getProductById(int id);
	public void addProduct(Product p);
	public 	void removeproduct(int productId);
}
