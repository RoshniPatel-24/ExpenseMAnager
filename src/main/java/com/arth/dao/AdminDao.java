package com.arth.dao;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	@Autowired
	JdbcTemplate stmt;

  public Integer getTotalExpenseCountForCurrentDate() {

		String countQuery = "select count(*) from expense where date = ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

	if (mmm < 10) {
			today = yyy+ "-0" + mmm + "-"  + ddd;
		} else {
			today = yyy+ "-" + mmm + "-"  + ddd;
		}
	System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public Integer getTotalUsersCountForCurrentYear() {

		String countQuery = "select count(*) from users where createdAt like ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = "%-" + yyy;// 2023

		System.out.println("CURRENT YEAR => " + today);

	return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
	}

	public Integer getSumOfExpenseAmountForCurrentDate() {

		String countQuery = "select sum(amount) from expense where date = ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

	String today = "";

		if (mmm < 10) {
			today = yyy+ "-0" + mmm + "-"  + ddd ;
		} else {
			today = yyy+ "-" + mmm + "-"  + ddd;
	}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

}
}
