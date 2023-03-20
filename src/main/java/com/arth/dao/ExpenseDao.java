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
		String insertQuery = "insert into expense (expenseName,deleted) values(?,?)";
		stmt.update(insertQuery,expenseBean.getExpenseName(),false); // insert update delete
	}
	public List<ExpenseBean>getAllExpense(){
		
		String joinQuery = "select * from expense where deleted =false";
		
		return stmt.query (joinQuery,new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class));
	}
	
	public void deleteexpense(Integer expenseId) {
		String updateQuery = "update expense set deleted = true where expenseId= ?";
		stmt.update(updateQuery,expenseId);
	}

	public ExpenseBean getExpenseById(Integer expenseId) {
		ExpenseBean expenseBean = null;
				try {
					expenseBean = stmt.queryForObject("select * from expense where expenseId=?",
							new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[] {expenseId});
				}catch(Exception e) {
					System.out.println("ExpenseDao :: getExpenseById()");
					System.out.println(e.getMessage());
				}
		return expenseBean;
	}
	
}
