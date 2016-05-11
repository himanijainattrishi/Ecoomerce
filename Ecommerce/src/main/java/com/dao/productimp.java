package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;
@Repository

public class productimp implements productdao{

	
	public SessionFactory sessionFactory; 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	@Autowired
	public productimp(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}




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
		
	    // tx = session.beginTransaction();
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
		
		
		Session session=sessionFactory.getCurrentSession();
		session.update(p);
		
	}
	public Product getProductById(int id)
	{
		
		Session session=sessionFactory.getCurrentSession();
		Product p=(Product)session.get(Product.class,new Integer(id));
		System.out.println(p);
		return p;
		
	}
	public void addProduct(Product p) {
		
		Session session=sessionFactory.getCurrentSession();
		session.save(p);
		
	}
	public void removeproduct(int productId) {
		Session session=sessionFactory.getCurrentSession();
	
		// tx = session.beginTransaction();
		 Product p=(Product)session.get(Product.class,new Integer(productId));
		 System.out.print("remove dao start");
		 System.out.println("");
		 System.out.println("");
		 System.out.println(productId);
		 session.delete(p);
	
		 
	
		
	}
	

	

}
