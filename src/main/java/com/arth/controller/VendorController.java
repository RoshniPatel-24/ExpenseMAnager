package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.bean.VendorBean;
import com.arth.dao.VendorDao;

@Controller
public class VendorController {
	@Autowired
	VendorDao vendorDao;
	
	@GetMapping("/newvendor") // url--browser
	public String newVendor() { // method

		return "Vendor";// jsp--open
	}
	@PostMapping("/savevendor")
	public String savevendor(VendorBean vendorBean) {
		System.out.println(vendorBean.getVendorName());// statusName;
		vendorDao.addVendor(vendorBean);
		return "redirect:/listvendor";
	}
	
	//List Vendor 
	@GetMapping("/listvendor")
	public String listVendor(Model model) {

		// pull all category from db-table
		List<VendorBean> vendorlist = vendorDao.getAllVendor();
		model.addAttribute("vendorlist",vendorlist);
		return "VendorList";
	}
	
	//Delete Vendor
	@GetMapping("/deletevendor/{vendorId}")
	public String deleteVendor(@PathVariable("vendorId") Integer vendorId) {
		//12 45 
		vendorDao.deleteVendor(vendorId);
		return "redirect:/listvendor";//
	}
	
	//View Vendor
	@GetMapping("/viewvendor/{vendorId}")
	public String viewVendor (@PathVariable("vendorId") Integer vendorId,Model model) {
		VendorBean vendorBean = vendorDao.getVendorById(vendorId);
		model.addAttribute("vendorBean",vendorBean);
		return "ViewVendor";	
	}	
	
	@GetMapping("/editvendor")
	public String editVendor(@RequestParam("vendorId") Integer vendorId,Model model) {
		VendorBean vendorBean = vendorDao.getVendorById(vendorId);
		model.addAttribute("vendorBean",vendorBean);
		return "EditVendor";
	}
	@PostMapping("/updatevendor")
	public String updateVendor(VendorBean vendorBean) {
		vendorDao.updateVendor(vendorBean);
		return "redirect:/listvendor";
	}
}
