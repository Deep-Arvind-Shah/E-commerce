package com.project.backend.dao;

import java.util.List;

import com.project.backend.dto.Category;

public interface CategoryDAO {
	
	
	List<Category> list();
	Category get(int id);

}
