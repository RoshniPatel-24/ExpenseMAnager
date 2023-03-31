package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.arth.bean.IncomeBean;

@Repository
public class IncomeDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addIncome(IncomeBean incomeBean) {
		String insertQuery = "insert into income (title,date,userId,accountId,description,statusId,amount,deleted) values(?,?,?,?,?,?,?,?)";
		stmt.update(insertQuery, incomeBean.getTitle(),incomeBean.getDate(), incomeBean.getUserId(),incomeBean.getAccountId(),incomeBean.getDescription(),incomeBean.getStatusId(),incomeBean.getAmount(),false); // insert update delete
	}
	
	public List<IncomeBean> getAllInome()

	{
		String joinQuery = "select i.*,  ac.accountId, s.statusId from income i , account ac, status s,users u Where u.userId= i.userId and ac.accountId= i.accountId and s.statusId=i.statusId  and i.deleted = false";

		return stmt.query(joinQuery, new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class));
	}
	
	
	public void deleteincome(Integer incomeId) {
		String updateQuery = "update income set deleted = true where incomeId= ?";
		stmt.update(updateQuery, incomeId);
	}

	public IncomeBean getIncomeById(Integer incomeId) {
		IncomeBean incomeBean = null;
		try {
			incomeBean = stmt.queryForObject("select * from income where incomeId=?",
					new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class), new Object[] { incomeId });
		} catch (Exception e) {
			System.out.println("IncomeDao :: getIncomeById()");
			System.out.println(e.getMessage());
		}
		return incomeBean;
	}	
}
