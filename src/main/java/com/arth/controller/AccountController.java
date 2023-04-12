package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		System.out.println(accountBean.getAccountType());// statusName;
		accountDao.addAccount(accountBean);
		return "redirect:/listaccount";
	}
	
	//List Account
	@GetMapping("/listaccount")
	public String listAccount(Model model) {

		// pull all category from db-table
		List<AccountBean> accountlist = accountDao.getAllAccount();
		model.addAttribute("accountlist",accountlist);
		return "ListAccountType";
	}
	
	//Delete Account
	@GetMapping("/deleteaccount/{accountId}")
	public String deleteAccount(@PathVariable("accountId") Integer accountId) {
		//12 45 
		accountDao.deleteAccount(accountId);
		return "redirect:/listaccount";//
	}
	
	/*@GetMapping("/viewcategory/{categoryId}")
	public String viewCategory (@PathVariable("categoryId") Integer categoryID,Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryID);
		model.addAttribute("categoryBean",categoryBean);
		return "ViewCategory";
		
	}*/
	
	//View Account
	@GetMapping("/viewaccount/{accountId}")
	public String viewAccount (@PathVariable("accountId") Integer accountId,Model model){
		AccountBean accountBean = accountDao.getAccountById(accountId);
		model.addAttribute("accountBean",accountBean);
		return "ViewAccountType";
	}
	//Edit Account
			@GetMapping("/editaccount")
			public String editAccount(@RequestParam("accountId") Integer accountId,Model model) {
				AccountBean accountBean = accountDao.getAccountById(accountId);//12
				model.addAttribute("accountBean", accountBean);
				return "EditAccountType";
			}
			
			// Update Status
			@PostMapping("/updateaccount")
			public String updateAccount(AccountBean accountBean) {
				accountDao.updateAccount(accountBean);
				return "redirect:/listaccount";
			}
}
