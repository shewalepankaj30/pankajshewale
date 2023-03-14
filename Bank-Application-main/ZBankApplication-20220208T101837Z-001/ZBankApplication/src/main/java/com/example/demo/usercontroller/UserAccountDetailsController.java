package com.example.demo.usercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.user.User;
import com.example.demo.user.UserAccountDetails;
import com.example.demo.userdao.UserAccountDetailsDao;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("useraccountdetails")
public class UserAccountDetailsController {

	@Autowired
	UserAccountDetailsDao uadd;
	
	UserAccountDetails uad;
	ModelAndView mv ;
	
//	@RequestMapping("depositeSucess")
//	public ModelAndView miniDeposite(UserAccountDetails uad ,) {
//		this.uad=uad;
//		
//	}
//	@RequestMapping("ministatementSucess")
//	public ModelAndView userMiniStatementSucess(UserAccountDetails uad){//@RequestParam("uaccountno")String uaccountno ) {//@RequestParam("udeposite") float udeposite, @RequestParam("uwithdraw") float uwithdraw ,@RequestParam("ubalance") float ubalance) {
////		uad = uadd.findById(uaccountno).orElse(new UserAccountDetails());
//		this.uad=uad;
//		uadd.save(uad);
////		mv.addObject("useradobj",uad);
//		 mv.setViewName("userMiniStatementSucess");
//		return mv;
//	}
}
