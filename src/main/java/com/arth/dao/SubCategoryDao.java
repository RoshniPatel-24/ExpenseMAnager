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

		stmt.update(insertQuery, subCategoryBean.getSubCategoryName(), false,subCategoryBean.getSubCategoryId());// insert //update //delete
	}

	public List<SubCategoryBean> getAllSubCategory() {
		String joinQuery= "select c.categoryName , sc.categoryId,sc.subCategoryId,sc.subCategoryName,sc.deleted from category c , "
				+ "subcategory sc where c.categoryId = sc.categoryId and sc.deleted = false";
		return stmt.query(joinQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));	
	}
	
	public void deleteSubCategory(Integer subCategoryId) {
		String updateQuery = "update subcategory set deleted = true where subcategoryId = ?";
		stmt.update(updateQuery,subCategoryId);	
	}
	public SubCategoryBean getSubCategoryById(Integer subCategoryId) {

		return stmt.queryForObject("select * from subcategory where subCategoryId = ?",
				new BeanPropertyRowMapper<>(SubCategoryBean.class), new Object[] { subCategoryId });
	}

	public void updateSubCategory(SubCategoryBean subCategoryBean) {
		stmt.update("update subCategory set subCategoryName = ? , categoryId = ? where subCategoryId = ? ",
				subCategoryBean.getSubCategoryName(), subCategoryBean.getCategoryId(), subCategoryBean.getSubCategoryId());
	}	
}
