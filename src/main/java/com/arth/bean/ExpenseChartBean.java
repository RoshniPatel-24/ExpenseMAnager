package com.arth.bean;

public class ExpenseChartBean {
	
	String month;
	Integer userId;
	Long expanseAmount;
	Integer categoryId;
	Integer subCategoryId;
	String categoryName;
	String subCategoryName;
	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	public Long getExpanseAmount() {
		return expanseAmount;
	}
	public void setExpanseAmount(Long expanseAmount) {
		this.expanseAmount = expanseAmount;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}	
}
	
	

