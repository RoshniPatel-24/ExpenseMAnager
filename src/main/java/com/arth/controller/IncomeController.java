package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.IncomeBean;
import com.arth.dao.AccountDao;
import com.arth.dao.IncomeDao;
import com.arth.dao.StatusDao;
import com.arth.dao.UserDao;
@Controller
public class IncomeController {
	
	@Autowired
	IncomeDao incomeDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	AccountDao accountDao;
	@Autowired
	UserDao userDao;
	
	
	@GetMapping("/addincome")  //url --Browser
	public String addIncome(Model model) { /*
											 * //method List<IncomeBean> incomelist = incomeDao.getAllInome();
											 */
		
		model.addAttribute("statuslist",statusDao.getAllStatus());
		model.addAttribute("accountlist",accountDao.getAllAccount());
		model.addAttribute("userlist",userDao.getAllUser());
		
		return "AddIncome"; //jsp open
	}
	
	@PostMapping("/saveincome")
	public String saveincome(IncomeBean incomeBean) {
		System.out.println(incomeBean.getIncomeId()); //income name
		incomeDao.addIncome(incomeBean);
		return "redirect:/listincome";
	}
	
	@GetMapping("/listincome")
	public String listIncome(Model model) {
		
		//pull all expense from db-table
		
		List<IncomeBean> incomelist = incomeDao.getAllInome();
		model.addAttribute("incomelist",incomelist);
		return "ListIncome"; 
	}
	
	@GetMapping("/deleteincome/{incomeId}")
	public String deleteIncomme(@PathVariable("incomeId") Integer incomeId) {
		incomeDao.deleteincome(incomeId);
		return "redirect:/listincome";
	}
	
	@GetMapping("viewincome/{incomeeId}")
	public String viewIncome (@PathVariable("incomeId") Integer incomeId, Model model) {
		IncomeBean incomeBean=incomeDao.getIncomeById(incomeId);
		model.addAttribute("incomeBean",incomeBean);
		return "ViewIncome";
	}

}
