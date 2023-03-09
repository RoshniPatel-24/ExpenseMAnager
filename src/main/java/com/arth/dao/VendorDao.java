package com.arth.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.VendorBean;

@Repository
public class VendorDao {
	
	
	@Autowired
	JdbcTemplate stmt;
	// add
			public void addVendor(VendorBean vendorBean) {
				String insertQuery = "insert into vendor (vendorName,deleted) values (?,?) ";

				stmt.update(insertQuery, vendorBean.getVendorName(), false);// insert //update //delete
			}
			public List<VendorBean>getAllVendor() {

				String joinQuery = "select * from vendor where deleted = false";

				 return stmt.query(joinQuery, new BeanPropertyRowMapper<VendorBean>(VendorBean.class));
				
				//c1 c2 c3 
				
			}
			
			public void deleteVendor(Integer vendorId) {
				String updateQuery = "update vendor set deleted = true where vendorId = ?";
				stmt.update(updateQuery,vendorId);
				
			}




}
