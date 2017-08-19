package com.project.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.backend.dao.ProductDAO;
import com.project.backend.dto.Product;

public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product product;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.project.backend");
		context.refresh();

		productDAO = (ProductDAO) context.getBean("productDAO");

	}


/*	@Test
	public void testCRUDProduct() {
		
		//Add operation

		product = new Product();

		product.setName("Amul Milk");
		product.setBrand("Amul");
		product.setDescription("1Liter tetra pack");
		product.setUnitPrice(62);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting the product!", false, productDAO.add(product));


		//reading and updating the product
		product = productDAO.get(2);
		product.setName("Nestle Milk");
		assertEquals("Something went wrong while inserting the product!", true, productDAO.update(product));
		assertEquals("Something went wrong while updating the product!", true, productDAO.delete(product));
		//fetching the list
		assertEquals("Something went wrong while deleting the product!",6, productDAO.list().size());


		
	}*/

	@Test
	public void  testListActiveProducts(){
		assertEquals("Something went wrong while deleting the product!",5, productDAO.listActiveProducts().size());
		
		
	}
	
	@Test
	public void  testListActiveProductsByCategory(){
		assertEquals("Something went wrong while deleting the product!",3, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while deleting the product!",2, productDAO.listActiveProductsByCategory(1).size());
		
		
	}

	@Test
	public void  getLatestActiveProduct(){
		assertEquals("Something went wrong while deleting the product!",3, productDAO.getLatestActiveProducts(3).size());
		
	}
}
