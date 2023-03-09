package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.AccountBean;
import com.arth.dao.AccountDao;

@Controller
public class AccountController {
	@Autowired
	AccountDao accountDao;
	
	@GetMapping("/newaccount") // url--browser
	public String newAccount() { // method

		return "AccountType";// jsp--open
	}
	@PostMapping("/saveaccount")
	public String saveAccount(AccountBean accountBean) {
		System.out.println(accountBean.getAccountName());// statusName;
		accountDao.addAccount(accountBean);
		return "redirect:/listaccount";
	}
	@GetMapping("/listaccount")
	public String listAccount(Model model) {

		// pull all category from db-table
		List<AccountBean> list = accountDao.getAllAccount();
		model.addAttribute("list",list);
		return "ListAccountType";
	}
	
	@GetMapping("/deleteaccount/{accountId}")
	public String deleteAccount(@PathVariable("accountId") Integer accountId) {
		//12 45 
		accountDao.deleteAccount(accountId);
		return "redirect:/listaccount";//
	}
	

	

}
