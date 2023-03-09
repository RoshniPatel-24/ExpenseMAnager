package com.arth.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.StatusBean;
import com.arth.dao.StatusDao;

@Controller
public class StatusController {
	
	@Autowired
	StatusDao statusDao;

	@GetMapping("/newstatus") // url--browser
	public String newCategory() { // method

		return "Status";// jsp--open
	}
	@PostMapping("/savestatus")
	public String saveStatus(StatusBean statusBean) {
		System.out.println(statusBean.getStatusName());// statusName;
		statusDao.addStatus(statusBean);
		return "redirect:/liststatus";
	}
	@GetMapping("/liststatus")
	public String listStatus(Model model) {

		// pull all category from db-table
		List<StatusBean> list = statusDao.getAllStatus();
		model.addAttribute("list",list);
		return "ListStatus";
	}
	
	@GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId") Integer statusId) {
		//12 45 
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus";//
	}
	

}
