package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.ExpenseBean;
import com.arth.dao.ExpenseDao;


@Controller
public class ExpenseController {
	@Autowired
	ExpenseDao expenseDao;
	
	@GetMapping("/newexpense")  //url --Browser
	public String addExpense() {  //method
		
		return "AddExpense"; //jsp open
	}
	
	@PostMapping("saveexpense")
	public String saveexpense(ExpenseBean expenseBean) {
		System.out.println(expenseBean.getExpenseName()); //expensename
		expenseDao.addExpense(expenseBean);
		return "redirect:/listexpense";
	}
	
	@GetMapping("/listexpense")
	public String listExpense(Model model) {
		
		//pull all expense from db-table
		
		List<ExpenseBean> list = expenseDao.getAllExpense();
		model.addAttribute("list",list);
		return "ListExpense";
	}
	
	@GetMapping("/deleteexpense/{expenseId}")
	public String deleteExpense(@PathVariable("expenseId") Integer expenseId) {
		expenseDao.deleteexpense(expenseId);
		return "redirect:/listexpense";
	}
	
	@GetMapping("viewexpense/{expenseId}")
	public String viewExpense (@PathVariable("expenseId") Integer expenseId, Model model) {
		ExpenseBean expenseBean=expenseDao.getExpenseById(expenseId);
		model.addAttribute("expenseBean",expenseBean);
		return "ViewExpense";
	}

}
