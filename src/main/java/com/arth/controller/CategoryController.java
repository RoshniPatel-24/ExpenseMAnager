package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.arth.bean.CategoryBean;
import com.arth.dao.CategoryDao;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;

	@GetMapping("/newcategory") // url--browser
	public String newCategory(HttpServletRequest request) { // method
		//cookie name
		//cookie userid
		int userId=-1;
		
		//rread all cookies from request
		String firstName="";
		Cookie c[]=request.getCookies(); //jSessionId userId octo firstName
		
		for(Cookie x : c) { //jSessionId userID firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if(x.getName().equals("firtsName")) {
				firstName = x.getValue();
			}
		}
			System.out.println("usreId -> "+userId);
			System.out.println("firstName ->"+firstName);
			
			return "NewCategory";// jsp--open
	}

	@PostMapping("/savecategory")
	public String saveCategory(CategoryBean categoryBean) {
		System.out.println(categoryBean.getCategoryName());// categoryName;
		categoryDao.addCategory(categoryBean);
		return "redirect:/listcategories";
	}

	//List Category
	@GetMapping("/listcategories")
	public String listCategories(Model model) {

		// pull all category from db-table
		List<CategoryBean> categorylist = categoryDao.getAllCategory();
		model.addAttribute("categorylist",categorylist);
		return "ListCategory";
	}
	
	//Delete Category
	@GetMapping("/deletecategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId) {
		//12 45 
		categoryDao.deleteCategory(categoryId);
		return "redirect:/listcategories";//
	}
	
	//View Category
	@GetMapping("/viewcategory/{categoryId}")
	public String viewCategory (@PathVariable("categoryId") Integer categoryID,Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryID);
		model.addAttribute("categoryBean",categoryBean);
		return "ViewCategory";	
	}
	
	//Edit Category
	@GetMapping("/editcategory")
	public String editCategory(@RequestParam("categoryId") Integer categoryId,Model model) {
		CategoryBean categoryBean = categoryDao.getCategoryById(categoryId);//12
		model.addAttribute("categoryBean", categoryBean);
		return "EditCategory";
	}
	
	// Update Category
	@PostMapping("/updatecategory")
	public String updateCategory(CategoryBean categoryBean) {
		categoryDao.updateCategory(categoryBean);
		return "redirect:/listcategories";
	}
	
}
