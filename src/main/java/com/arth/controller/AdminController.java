package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.arth.bean.ExpenseChartBean;
import com.arth.bean.IncomeChartBean;
import com.arth.dao.AdminDao;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;
	
	/*@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		
		Integer totalExpenseCount = adminDao.getTotalExpenseCountForCurrentDate();
		Integer totalUsersCount = adminDao.getTotalUsersCountForCurrentYear();
		Integer sumOfExpenseAmount = adminDao.getSumOfExpenseAmountForCurrentDate();
		
		model.addAttribute("totalExpense",totalExpenseCount);
		model.addAttribute("totalUsers",totalUsersCount);
		model.addAttribute("totalRevenue",sumOfExpenseAmount);
		
		return "AdminDashboard";
	}
}*/
	
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-method--00000000000sd");
		
		 //total Expense amount count
		
		//totalOrderCount-Today
		Integer totalTransactionCount = adminDao.getTotalTransactionCountForCurrentDate();
		Integer sumOfExpenseAmount = adminDao.getSumOfExpenseAmountForCurrentDate();		
		Integer sumOfIncomeAmount = adminDao.getSumOfIncomeAmountForCurrentDate();
		Integer sumOfUsers = adminDao.getTotalUserCountForCurrentYear();
		
		/* for BarChart */
		List<ExpenseChartBean> chartData = adminDao.getExpenseStats();
		
		List<IncomeChartBean> chartData1 = adminDao.getIncomeStats();
		
		/* for PieChart */
		List<ExpenseChartBean> piechartData = adminDao.getCategoryStats();
		
		
		model.addAttribute("totalTransactionCount",totalTransactionCount);
		model.addAttribute("sumOfExpenseAmount",sumOfExpenseAmount);
		model.addAttribute("sumOfIncomeAmount",sumOfIncomeAmount);
		model.addAttribute("sumOfUsers",sumOfUsers);
		model.addAttribute("chartData", chartData);
		model.addAttribute("chartData1",chartData1);
		model.addAttribute("piechaetData",piechartData);

		return "AdminDashboard";
	}
	}
