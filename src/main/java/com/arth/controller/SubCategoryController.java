package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.bean.SubCategoryBean;
import com.arth.dao.CategoryDao;
import com.arth.dao.SubCategoryDao;

@Controller
public class SubCategoryController {
@Autowired
CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subCategoryDao;

	@GetMapping("/newsubcategory") // url--browser
	public String newSubCategory(Model model) { // method
		model.addAttribute("categorylist",categoryDao.getAllCategory());
		return "NewSubCategory";// jsp--open
	}
	@PostMapping("/savesubcategory")
	public String saveSubCategory(SubCategoryBean subCategoryBean) {
		System.out.println(subCategoryBean.getSubCategoryName());// categoryName;
		System.out.println(subCategoryBean.getCategoryId());
		
		//dao
		//insert
		
		subCategoryDao.addSubCategory(subCategoryBean);
		return "redirect:/listsubcategories";
	}
	
	@GetMapping("/listsubcategories")
	public String listSubCategories(Model model) {

		// pull all subcategory from db-table
		List<SubCategoryBean> subcategorylist = subCategoryDao.getAllSubCategory();
		model.addAttribute("subcategorylist",subcategorylist);
		return "ListSubCategory";
	}
	
	@GetMapping("/deletesubcategory/{subCategoryId}")
	public String deleteCategory(@PathVariable("subCategoryId") Integer subCategoryId) {
		//12 45 
		subCategoryDao.deleteSubCategory(subCategoryId);
		return "redirect:/listsubcategories";//
	}
	@GetMapping("/viewsubcategory/{subCategoryId}")
	public String viewSubCategory (@PathVariable("subCategoryId") Integer subCategoryID,Model model) {
		SubCategoryBean subCategoryBean = subCategoryDao.getSubCategoryById(subCategoryID);
		model.addAttribute("subCategoryBean",subCategoryBean);
		return "ViewSubCategory";	
	}
	
	@GetMapping("/editsubcategory")
	public String editSubCategory(@RequestParam("subCategoryId") Integer subCategoryId,Model model) {

		SubCategoryBean subCategoryBean = subCategoryDao.getSubCategoryById(subCategoryId);
		model.addAttribute("subCategoryBean",subCategoryBean);
		model.addAttribute("categorylist", categoryDao.getAllCategory());
		return "EditSubCategory";
	}

	@PostMapping("/updatesubcategory")
	public String updateSubCategory(SubCategoryBean subCategoryBean) {
		subCategoryDao.updateSubCategory(subCategoryBean);
		
		return "redirect:/listsubcategories";
	}

}
