package com.example.demo.admincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.admin.Admin;
import com.example.demo.admindao.AdminDao;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminDao ad;
	ModelAndView mv;
	Admin admin;
	
	
	@RequestMapping("page")
	public ModelAndView pageAdmin() {
		
		mv = new ModelAndView("adminLogin");
		return mv;
	}
	@RequestMapping("new")
	public ModelAndView newAdmin() {
		mv = new ModelAndView("adminNew");
		return mv;
	}
	
	@RequestMapping("insertnew")
	public String newaAdmin(Admin a) {
		this.admin=a;
		ad.save(admin);
		return "adminLogin";
	}
	
	@RequestMapping("goback")
	public String goBack() {
		return "adminLoggedin";
	}
	@RequestMapping("login")
	public ModelAndView loginAdmin(Admin a , @RequestParam("aid") String aid , @RequestParam("apassword") String apass) {
		a = ad.findById(aid).orElse(new Admin());
		if(a!=null) {
			if(aid.equals(a.getAid()) && apass.equals(a.getApassword())) {
				mv = new ModelAndView("adminLoggedin");
				return mv;
			}
			else {
				mv = new ModelAndView("adminLogin");
				return mv;
			}
		}
		else {
			mv = new ModelAndView("adminLogin");
			return mv;
		}
		
	}
	
	@RequestMapping("forgetpassword")
	public String forgetPassword() {
		
		return "adminupdatePassword";
	}
	
	@RequestMapping("upadatepassword")
	public ModelAndView updatePassword(Admin a ,@RequestParam("aid") String aid, @RequestParam("apassword") String apass) {
		 a = ad.findById(aid).orElse(new Admin());
		 if(aid.equals(a.getAid())) {
			 a.setApassword(apass);
			 ad.save(a);
			 
			 mv = new ModelAndView("adminLogin");
			 return mv;
		 }
		 else {
			 mv = new ModelAndView("adminupdatePassword");
			 return mv;
		 }
	}
	
	@RequestMapping("admindetail")
	public ModelAndView adminDetails(@RequestParam("aid") String aid ) {
			 admin= ad.findById(aid).orElse(new Admin());
			
			mv = new ModelAndView("adminPersonalInfo");
			mv.addObject("aobj",admin);
			return mv;
		
	}
	
	@RequestMapping("home")
	public String homePage() {
		return "index";
	}
}
