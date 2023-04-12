package com.arth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.arth.dao.AdminDao;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;
	
	@GetMapping("/admindashboard")
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
}
