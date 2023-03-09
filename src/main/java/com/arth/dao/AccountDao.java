package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.AccountBean;



@Repository

public class AccountDao {
	@Autowired
	JdbcTemplate stmt;
	// add
			public void addAccount(AccountBean accountBean) {
				String insertQuery = "insert into account (accountName,deleted) values (?,?) ";

				stmt.update(insertQuery, accountBean.getAccountName(), false);// insert //update //delete
			}
			public List<AccountBean>getAllAccount() {

				String selectQuery = "select * from account where deleted = false";

				List<AccountBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<AccountBean>(AccountBean.class));
				
				//c1 c2 c3 
				
				return list;
			}
			
			public void deleteAccount(Integer accountId) {
				String updateQuery = "update account set deleted = true where accountId = ?";
				stmt.update(updateQuery,accountId);
				
			}

}
