package com.arth.controller;

	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.GetMapping;

	@Controller
	public class UserController {

		@GetMapping("/userdashboard")
		public String userdashboard() {
			return "UserDashboard";
		}
	}

