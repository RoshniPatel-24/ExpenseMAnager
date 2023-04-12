package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.ExpenseBean;

@Repository
public class ExpenseDao {
	@Autowired
	JdbcTemplate stmt;

	public void addExpense(ExpenseBean expenseBean) {
		String insertQuery = "insert into expense (title,categoryId,subCategoryId,vendorId,accountId,statusId,amount,date,description,userId,deleted) values(?,?,?,?,?,?,?,?,?,?,?)";
		stmt.update(insertQuery, expenseBean.getTitle(), expenseBean.getCategoryId(), expenseBean.getSubCategoryId(),
				expenseBean.getVendorId(), expenseBean.getAccountId(), expenseBean.getStatusId(),
				expenseBean.getAmount(), expenseBean.getDate(), expenseBean.getDescription(), expenseBean.getUserId(),
				false); // insert update delete
	}

	public List<ExpenseBean> getAllExpense()

	{
		String joinQuery = "select e.*, c.categoryName ,sc.subCategoryName, v.vendorName, ac.accountType, s.statusName, u.firstName from expense e ,  subCategory sc, vendor v, account ac, status s,users u,category c Where c.categoryId=e.categoryId and v.vendorId=e.vendorId and  sc.subcategoryId =  e.subcategoryId and u.userId= e.userId and ac.accountId= e.accountId and s.statusId=e.statusId  and e.deleted = false";

		return stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class));
	}

	public void deleteexpense(Integer expenseId) {
		String updateQuery = "update expense set deleted = true where expenseId= ?";
		stmt.update(updateQuery, expenseId);
	}

	public ExpenseBean getExpenseById(Integer expenseId) {
		ExpenseBean expenseBean = null;
		try {
			expenseBean = stmt.queryForObject("select e.*, c.categoryName ,sc.subCategoryName, v.vendorName, ac.accountType, s.statusName, u.firstName from expense e ,  subCategory sc, vendor v, account ac, status s,users u,category c Where c.categoryId=e.categoryId and v.vendorId=e.vendorId and  sc.subcategoryId =  e.subcategoryId and u.userId= e.userId and ac.accountId= e.accountId and s.statusId=e.statusId  and e.deleted = false and expenseId=?",
					new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class), new Object[] { expenseId });
		} catch (Exception e) {
			System.out.println("ExpenseDao :: getExpenseById()");
			System.out.println(e.getMessage());
		}
		return expenseBean;
	}
	//Update Expense
	public void updateExpense (ExpenseBean expenseBean) {
		stmt.update("update expense set title=?, categoryId = ? , subCategoryId=  ? , statusId = ? , vendorId = ? , accountId = ?, amount = ? , date= ? ,description = ?,userId = ? where expenseId = ?",
		expenseBean.getTitle(),expenseBean.getCategoryId(),expenseBean.getSubCategoryId(),expenseBean.getStatusId(),expenseBean.getVendorId(),expenseBean.getAccountId(),expenseBean.getAmount(),expenseBean.getDate(),expenseBean.getDescription(),expenseBean.getUserId(),expenseBean.getExpenseId());
	}
}
