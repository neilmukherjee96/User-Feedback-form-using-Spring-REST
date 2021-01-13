package com.project2.dao;

import org.springframework.data.repository.CrudRepository;

import com.project2.model.Product;

public interface ProductDAO extends CrudRepository<Product, Integer > {	
	

}
