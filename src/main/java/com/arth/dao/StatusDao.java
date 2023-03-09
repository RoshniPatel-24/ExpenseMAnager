package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.StatusBean;





@Repository
public class StatusDao{
	@Autowired
	JdbcTemplate stmt;

	// add
		public void addStatus(StatusBean statusBean) {
			String insertQuery = "insert into status (statusName,deleted) values (?,?) ";

			stmt.update(insertQuery, statusBean.getStatusName(), false);// insert //update //delete
		}
		public List<StatusBean>getAllStatus() {

			String joinQuery = "select * from status where deleted = false";

			return stmt.query(joinQuery,new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
			
			//c1 c2 c3 
			
		}
		
		public void deleteStatus(Integer statusId) {
			String updateQuery = "update status set deleted = true where statusId = ?";
			stmt.update(updateQuery,statusId);
			
		}

}
