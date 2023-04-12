package com.arth.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// List Status
	@GetMapping("/liststatus")
	public String listStatus(Model model) {

		// pull all category from db-table
		List<StatusBean> statuslist = statusDao.getAllStatus();
		model.addAttribute("statuslist",statuslist);
		return "ListStatus";
	}
	
	//Delete Status
	@GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId") Integer statusId) {
		//12 45 
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus";//
	}
	
	//View Status
	@GetMapping("/viewstatus/{statusId}")
	public String viewstatus (@PathVariable("statusId") Integer statusID,Model model) {
		StatusBean statusBean = statusDao.getStatusById(statusID);
		model.addAttribute("statusBean",statusBean);
		return "ViewStatus";		
	}
	//Edit Status
		@GetMapping("/editstatus")
		public String editStatus(@RequestParam("statusId") Integer statusId,Model model) {
			StatusBean statusBean = statusDao.getStatusById(statusId);//12
			model.addAttribute("statusBean", statusBean);
			return "EditStatus";
		}
		
		// Update Status
		@PostMapping("/updatestatus")
		public String updateStatus(StatusBean statusBean) {
			statusDao.updateStatus(statusBean);
			return "redirect:/liststatus";
		}
}
