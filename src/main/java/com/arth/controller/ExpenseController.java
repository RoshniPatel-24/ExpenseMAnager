package com.arth.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.bean.CategoryBean;
import com.arth.bean.ExpenseBean;
import com.arth.dao.AccountDao;
import com.arth.dao.CategoryDao;
import com.arth.dao.ExpenseDao;
import com.arth.dao.StatusDao;
import com.arth.dao.SubCategoryDao;
import com.arth.dao.UserDao;
import com.arth.dao.VendorDao;


@Controller
public class ExpenseController {
	@Autowired
	ExpenseDao expenseDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subCategoryDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	AccountDao accountDao;
	@Autowired
	VendorDao vendorDao;
	@Autowired
	UserDao userDao;
	
	@GetMapping("/addexpense")  //url --Browser
	public String addExpense(Model model, HttpSession session) {  //method
		List<CategoryBean> categorylist = categoryDao.getAllCategory();
		model.addAttribute("userlist",userDao.getAllUser());
		model.addAttribute("categorylist",categorylist);
		model.addAttribute("subcategorylist",subCategoryDao.getAllSubCategory());
		model.addAttribute("statuslist",statusDao.getAllStatus());
		model.addAttribute("accountlist",accountDao.getAllAccount());
		model.addAttribute("vendorlist",vendorDao.getAllVendor());
		
		
		return "AddExpense"; //jsp open
	}
	
	@PostMapping("/saveexpense")
	public String saveexpense(ExpenseBean expenseBean) {
		System.out.println(expenseBean.getExpenseId()); //expensename
		expenseDao.addExpense(expenseBean);
		return "redirect:/listexpense";
	}
	
	// List Expense
	@GetMapping("/listexpense")
	public String listExpense(Model model) {
		
		//pull all expense from db-table
		
		List<ExpenseBean> expenselist = expenseDao.getAllExpense();
		model.addAttribute("expenselist",expenselist);
		return "ListExpense";
	}
	
	// Delete Expense
	@GetMapping("/deleteexpense/{expenseId}")
	public String deleteExpense(@PathVariable("expenseId") Integer expenseId) {
		expenseDao.deleteexpense(expenseId);
		return "redirect:/listexpense";
	}
	
	//View Expense
	@GetMapping("/viewexpense")
	public String viewExpense (@RequestParam("expenseId") Integer expenseId, Model model) {
		ExpenseBean expenseBean=expenseDao.getExpenseById(expenseId);
		model.addAttribute("expenseBean",expenseBean);
		return "ViewExpense";
	}
	
	@GetMapping("/editexpense")
	public String editExpense(@RequestParam("expenseId") Integer expenseId,Model model) {
		ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId);
		model.addAttribute("expenseBean",expenseBean);
		model.addAttribute("categorylist", categoryDao.getAllCategory());
		model.addAttribute("subcategorylist",subCategoryDao.getAllSubCategory());
		model.addAttribute("accountlist",accountDao.getAllAccount());
		model.addAttribute("vendorlist",vendorDao.getAllVendor());
		model.addAttribute("statuslist",statusDao.getAllStatus());
		model.addAttribute("userlist",userDao.getAllUser());
		model.addAttribute("expenselist", expenseDao.getAllExpense());
		return "EditExpense";
	}

	@PostMapping("/updateexpense")
	public String updateExpense(ExpenseBean expenseBean) {
		 
		
		 System.out.println("userId =>"+expenseBean.getUserId());
		expenseDao.updateExpense(expenseBean);
		return "redirect:/listexpense";
	}
}
