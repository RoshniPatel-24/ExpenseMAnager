package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.SubCategoryBean;

@Repository
public class SubCategoryDao {
	
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addSubCategory(SubCategoryBean subCategoryBean) {
		
		String insertQuery = "insert into subcategory (subCategoryName,deleted,categoryId) values (?,?,?) ";

		stmt.update(insertQuery, subCategoryBean.getSubCategoryName(), false,subCategoryBean.getCategoryId());// insert //update //delete
	}

	public List<SubCategoryBean> getAllCategory() {
		String joinQuery= "select * from subcategory where deleted = false";
		return stmt.query(joinQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));	
	}
	
	public void deleteSubCategory(Integer subCategoryId) {
		String updateQuery = "update subcategory set deleted = true where subcategoryId = ?";
		stmt.update(updateQuery,subCategoryId);	
	}

	
}
