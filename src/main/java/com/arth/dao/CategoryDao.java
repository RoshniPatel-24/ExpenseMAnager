package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.CategoryBean;

@Repository
public class CategoryDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addCategory(CategoryBean categoryBean) {
		String insertQuery = "insert into category (categoryName,deleted) values (?,?) ";

		stmt.update(insertQuery, categoryBean.getCategoryName(), false);// insert //update //delete
	}

	public List<CategoryBean> getAllCategory() {

		String selectQuery = "select * from category where deleted = false";

		List<CategoryBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	
	public void deleteCategory(Integer categoryId) {
		String updateQuery = "update category set deleted = true where categoryId = ?";
		stmt.update(updateQuery,categoryId);	
	}

	// list
	public CategoryBean getCategoryById(Integer categoryId) {
		CategoryBean categoryBean = null;
		try {
			categoryBean = stmt.queryForObject("select * from category where categoryId =?",
					new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class),new Object[] {categoryId});
		}catch (Exception e) {
			System.out.println("CategoryDao :: getCategoryById()");
			System.out.println(e.getMessage());
		}
		return categoryBean;
	}
	// update

	// delete

}
