package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;
@Repository("p")
public class productimp implements productdao{

	@Autowired
	public SessionFactory sessionFactory; 
	Transaction tx=null;
	List<Product> product;
	
	public productimp()
	{
	product=new ArrayList();		
	}
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}

	public List<Product> listproduct()
	{
		Session session=getSession();
		
	     tx = session.beginTransaction();
	     String hql = "FROM Product";
	     Query query =session.createQuery(hql);
	     product=(List<Product>)query.list();
	     System.out.println("indao");
	     
	return product;
	}

	/*public int addProduct(String name, String brand, int price) {
		Session session=getSession();
		// TODO Auto-generated method stub
		Product p=new Product();
		p.setName(name);
		p.setBrand(brand);
		p.setPrice(price);
		
		tx=session.beginTransaction();
	    int i=(Integer)session.save(p);
	    tx.commit();
	    session.close();
	    return i;
	}*/
	public void updateProduct(Product p) {
		
		Session session=getSession();
		
		session.update(p);
		
	}
	public Product getProductById(int id)
	{
		Session session=getSession();
		 
		Product p=(Product)session.load(Product.class,new Integer(id));
		System.out.println(p);
		return p;
		
	}
	public void addProduct(Product p) {
		
		Session session=getSession();
		session.save(p);
		
	}
	public void removeproduct(int productId) {
		Session session=getSession();
		 
		// tx = session.beginTransaction();
		 Product p=(Product)session.load(Product.class,new Integer(productId));
		 if(p!=null)
		 {
			 session.delete(p);
		 }
	
		
	}
	

	

}
