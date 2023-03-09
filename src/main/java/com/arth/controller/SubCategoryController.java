package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.SubCategoryBean;
import com.arth.dao.CategoryDao;
import com.arth.dao.SubCategoryDao;

@Controller
public class SubCategoryController {
@Autowired
CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subCategoryDao;

	@GetMapping("/savesubcategory") // url--browser
	public String newSubCategory(Model model) { // method
		model.addAttribute("list",categoryDao.getAllCategory());
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
		List<SubCategoryBean> list = subCategoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "ListSubCategory";
	}
	
	/*@GetMapping("/deletesubcategory/{subCategoryId}")
	public String deleteCategory(@PathVariable("subCategoryId") Integer subCategoryId) {
		//12 45 
		subCategoryDao.deleteSubCategory(subCategoryId);
		return "redirect:/listsubcategories";//
	}*/
}
