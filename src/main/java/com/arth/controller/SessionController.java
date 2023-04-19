package com.arth.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.ForgetPasswordBean;
import com.arth.bean.LoginBean;
import com.arth.bean.UpdatePasswordBean;
import com.arth.bean.UserBean;
import com.arth.dao.UserDao;
import com.arth.service.EmailService;
import com.arth.util.OtpGenerator;

//annotation 
@Controller
public class SessionController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	EmailService emailService;
	

	// jsp open
	@GetMapping("/signup")
	public String signup() {
		return "Signup"; //JSP 
	}

	// jsp input process
	@PostMapping("/saveuser")
	public String saveUser(UserBean user , Model model) {
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());

		// validation
		// dbValidation
		// x@x.com present ?
				UserBean userBean = userDao.getUserByEmail(user.getEmail());
				if (userBean == null) {
					// insert
					userDao.insertUser(user);
					return "Login"; // EmployeeLogin.jsp
				}else {
					model.addAttribute("error","Email is already Registerd with Us");
					return "Signup";
				}
		
		// insert
		
	}

	// calculateTempSalary()

	@GetMapping("/login") // URL => Browser
	public String login() {
		return "Login";// JSP NAME
	}

	//on submit of Login.jsp 
	@PostMapping("/authentication")
	public String authentication(LoginBean login, Model model,HttpServletResponse response,HttpSession session) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());

		// validation : true
		// db -> users -> email : password match -> loginBean:email,password
		UserBean userBean = userDao.authenticateUser(login);

		if (userBean == null) {
			// inValid
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		} else {
			// valid
			
			//cookie
			Cookie c1 = new Cookie("userId",userBean.getUserId()+"");
			Cookie c2 = new Cookie("firstName",userBean.getFirstName()); 
			//add cookie
			response.addCookie(c1);
			response.addCookie(c2);
			
			//session
			session.setAttribute("userID", userBean.getUserId());
			session.setAttribute("user", userBean);
			//max inactive interval time
			session.setMaxInactiveInterval(60*5);//second
			
			if (userBean.getRole() == 1) {
				// admin
				return "redirect:/admindashboard";
			} else if (userBean.getRole() == 2) {
				// buyer
				return "redirect:/userdashboard";
			} else {
				return "404";
			}
		}

	}

	@GetMapping("/")
	public String root() {
		return "Login";
	}

	@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}

	//otp
	@PostMapping("/sendotpforforgetpassword")
	public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean,Model model) {
		System.out.println(forgetPasswordBean.getEmail());
		
		UserBean user =   userDao.findUserByEmail(forgetPasswordBean);
		if(user == null) {
			//error 
			model.addAttribute("error","Invalid Email");
			return "ForgetPassword";
		}else {
			 
			//generate otp
			//int otp = (int)(Math.random()*1000000);
			
			String otp  = OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(), otp);
			
			//user set --> email 
			//send mail 
			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);
			return "UpdatePassword";
		}
	}
				
		@PostMapping("/updatemypassword")
		public String udpateMyPassword(UpdatePasswordBean upBean) {
			System.out.println(upBean.getEmail());
			System.out.println(upBean.getPassword());
			System.out.println(upBean.getOtp());
			
			UserBean user = userDao.verifyOtpByEmail(upBean);
			if (user == null) {
				return "UpdatePassword";
			} else {
				userDao.updateMyPassword(upBean);
				return "Login" ;
				}
			}
			
			@GetMapping("/logout")
			public String logout(HttpSession session) {
				session.invalidate();//session destroy
				return "redirect:/login";
			}
		
			
}

