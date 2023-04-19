package com.arth.dao;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.arth.bean.ExpenseChartBean;
import com.arth.bean.IncomeChartBean;
import com.arth.bean.ProfileBean;

@Repository
public class AdminDao {
	@Autowired
	JdbcTemplate stmt;
	
	// for calculating total transaction
		public Integer getTotalTransactionCountForCurrentDate() {

			String countQuery = "select count(*) from expense where date = ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int ddd = c.get(Calendar.DATE);
			int mmm = c.get(Calendar.MONTH) + 1;
			int yyy = c.get(Calendar.YEAR);

			String today = "";

			if (mmm < 10) {
				today = yyy + "-0" + mmm + "-" + ddd;
			} else {
				today = yyy + "-" + mmm + "-" + ddd;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}
		
		
		// for calculating total expanse
		public Integer getSumOfExpenseAmountForCurrentDate() {

			String countQuery = "select sum(amount) from expense where date = ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int ddd = c.get(Calendar.DATE);
			int mmm = c.get(Calendar.MONTH) + 1;
			int yyy = c.get(Calendar.YEAR);

			String today = "";

			if (mmm < 10) {
				today = yyy + "-0" + mmm + "-" + ddd;
			} else {
				today = yyy + "-" + mmm + "-" + ddd;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}
		
		// for calculating total income
		public Integer getSumOfIncomeAmountForCurrentDate() {

			String countQuery = "select sum(amount) from income where date = ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int ddd = c.get(Calendar.DATE);
			int mmm = c.get(Calendar.MONTH) + 1;
			int yyy = c.get(Calendar.YEAR);

			String today = "";

			if (mmm < 10) {
				today = yyy + "-0" + mmm + "-" + ddd;
			} else {
				today = yyy + "-" + mmm + "-" + ddd;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}
		
		
		// for calculating total users;
		public Integer getTotalUserCountForCurrentYear() {   
			String countQuery = "select count(*) from users where createdAt like ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int yyy = c.get(Calendar.YEAR);

			System.out.println(yyy);
			String today = yyy + "-%" + "-%";// 2023

			System.out.println("CURRENT YEAR => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] {today});	
			
		}
		
		/* for barchart */	
	public List<ExpenseChartBean> getExpenseStats() {
		
			String selectQ = "select monthname(date) as month , sum(amount) as expenseAmount from expense where year(Date) = 2023 group by monthname(date) ";
			
			return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class));
		}


	public List<IncomeChartBean> getIncomeStats() {
		
		String selectQ = "select monthname(date) as month , sum(amount) as IncomeAmount from income where year(Date) = 2023 group by monthname(date) ";
		
		return stmt.query(selectQ, new BeanPropertyRowMapper<IncomeChartBean>(IncomeChartBean.class));
	}

	/* for pie Chart */

	public List<ExpenseChartBean> getCategoryStats() {
			
			String selectQ = "select c.categoryName  , sum(amount) as expenseAmount from expense e,category c where e.categoryId=c.categoryId  and year(Date) = 2023 group by categoryName ";
			return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class));
		}

	public void updateImageUrl(ProfileBean profileBean) {
		stmt.update("update users set imageUrl = ? where userId = ?",profileBean.getImageUrl(),profileBean.getUserId());
	}
}
	
	

	/*
	 * public Integer getTotalExpenseCountForCurrentMonth() {
	 * 
	 * String countQuery = "select count(*) from expense where date like ?"; //
	 * dd-mm-yyyy Calendar c=Calendar.getInstance(); int m=c.get(Calendar.MONTH);
	 * String currentMonth =""; // if(m<=9){ // currentMonth = y + "-0"+m+ "-" +d;
	 * // }else if(m>9){ // currentMonth = y + "-"+m+ "-" +d; // } if(m<=9){
	 * currentMonth = "%-" + "0"+m+ "-%"; }else if(m>9){ currentMonth = "%-" +m+
	 * "-%"; }
	 * 
	 * String currentMonth = "%-" +m+ "-%";// 2023
	 * 
	 * System.out.println(currentMonth);
	 * 
	 * return stmt.queryForObject(countQuery, Integer.class, new Object[]
	 * {currentMonth}); }
	 * 
	 * public Integer getTotalClientCountForCurrentMonth() {
	 * 
	 * String countQuery = "select count(*) from users where createdAt like ?";
	 * 
	 * Calendar c=Calendar.getInstance(); int m=c.get(Calendar.MONTH); String
	 * currentMonth ="";
	 * 
	 * if(m<=9){ currentMonth = "%-" + "0"+m+ "-%"; }else if(m>9){ currentMonth =
	 * "%-" +m+ "-%"; }
	 * 
	 * return stmt.queryForObject(countQuery, Integer.class, new Object[]
	 * {currentMonth}); }
	 * 
	 * public Integer getTotalExpenseAmountCurrentMonth() {
	 * 
	 * String countQuery = "select sum(amount) from expense where date like ?";
	 * 
	 * Calendar c=Calendar.getInstance(); int m=c.get(Calendar.MONTH); String
	 * currentMonth ="";
	 * 
	 * if(m<=9){ currentMonth = "%-" + "0"+m+ "-%"; }else if(m>9){ currentMonth =
	 * "%-" +m+ "-%"; } System.out.println("currentmonth---"+currentMonth);
	 * 
	 * return stmt.queryForObject(countQuery, Integer.class, new Object[]
	 * {currentMonth}); }
	 * 
	 * public Double getYesterdayExpenseAmount() { String countChangeQuery =
	 * "select sum(amount) from expense where date like ?";
	 * 
	 * 
	 * LocalDate today = LocalDate.now(); System.out.println(today); LocalDate
	 * yesterday = today.minusDays(1); System.out.println(yesterday); //String
	 * yesterday = ""; Double yesterdayExp = stmt.queryForObject(countChangeQuery,
	 * Double.class, new Object[] {yesterday}); System.out.println("yesterdayExp---"
	 * +yesterdayExp);
	 * 
	 * return yesterdayExp; }
	 * 
	 * 
	 * public List<ExpenseChartBean> getExpenseStats(){ String selectQ =
	 * "select month(date),sum(amount) from expense group by month(date)"; return
	 * stmt.query(selectQ, new
	 * BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class)); }
	 * 
	 * 
	 * public List<ExpenseChartBean> getExpenseStats() {
	 * 
	 * String selectQ =
	 * "select monthname(date) as month , sum(amount) as amount from expense where year(date) = 2023 group by  Monthname(date),month(date) order by month(date),Monthname(date)"
	 * ; return stmt.query(selectQ, new
	 * BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class)); }
	 */

