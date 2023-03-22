package com.arth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.arth.dao.AdminDao;

@Controller
public class AdminController {
	AdminDao adminDao;
	
	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		
		Integer totalOrderCount = adminDao.getTotalOrderCountForCurrentDate();
		Integer totalUserCount = adminDao.getTotalUserCountForCurrentYear();
		Integer sumOfOrderAmount = adminDao.getSumOfOrderAmountForCurrentDate();
		
		model.addAttribute("totalSales",totalOrderCount);
		model.addAttribute("totalRevenue",sumOfOrderAmount);
		model.addAttribute("totalUsers",totalUserCount);
		return "AdminDashboard";
	}
}
