package com.example.demo.usercontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.user.User;
import com.example.demo.user.UserAccountDetails;
import com.example.demo.user.UserFdRdAccount;
import com.example.demo.userdao.UserDao;
import com.example.demo.userdao.UserFdRdAccountDao;

@Controller
@RequestMapping("fdrd")
public class UserFdRdAccountController {
	User user ;
	UserFdRdAccount ufr;
	
	
	ModelAndView mv= new ModelAndView();
	@Autowired
	UserFdRdAccountDao ufrad ;
	
	@Autowired
	UserDao uad;
	@RequestMapping("created")
	public ModelAndView newAccount(User u ,UserFdRdAccount ufr , @RequestParam("duration") int duration , @RequestParam("amount")int amount ) {
		this.ufr=ufr;
		if(ufr.getAccounttype().equals("FD")) {
			
			String s = ufrad.getMaxAccountNo();
			System.out.println(s);
			String s1 = s.substring(2,5);
			int s2 = Integer.parseInt(s1);
			s2++;
			 s ="FD"+s2;
			ufr.setAccountno(s);
			
//			 ufr.setAccountno("FD100");
			ufrad.save(ufr);
		if(duration>=12 && duration<24) {
			 ufr.setRoi(0.5/100);
			 ufr.setNewamount(ufr.getAmount()+(ufr.getAmount()*ufr.getDuration()*ufr.getRoi()));
			 ufrad.save(ufr);
		}
		else if(duration>=24 && duration<60) {
			ufr.setRoi(0.5416/100);
			 ufr.setNewamount(ufr.getAmount()+(ufr.getAmount()*ufr.getDuration()*ufr.getRoi()));
			ufrad.save(ufr);
		}
		else if(duration>60) {
			ufr.setRoi(0.5833/100);
			 ufr.setNewamount(ufr.getAmount()+(ufr.getAmount()*ufr.getDuration()*ufr.getRoi()));
			ufrad.save(ufr);
		}
		}
		else if(ufr.getAccounttype().equals("RD")) {
			String s = ufrad.getMaxAccountNo();
			System.out.println(s);
			String s1 = s.substring(2,5);
			int s2 = Integer.parseInt(s1);
			s2++;
			 s ="RD"+s2;
			ufr.setAccountno(s);
			
//			 ufr.setAccountno("RD100");
			
			ufrad.save(ufr);
			ufr.setRoi(0.5416/100);
			 ufr.setNewamount(ufr.getAmount()+(ufr.getAmount()*ufr.getDuration()*ufr.getRoi()));
			ufrad.save(ufr);

		}
		
	
			mv.setViewName("userFdRdCreated"); //= new ModelAndView("userFdRdCreated");
		return mv;
	}
	
//	String s1 = ad.getMaxid();
//	//String substr = s1.substring(0, 4);
//	String substr1 = s1.substring(4, 6);
//	int s2 = Integer.parseInt(substr1);
//	s2++;
//	s1 = "FD000" + s2;
//	a.setId(s1);
////	a.setId("FD0001");
//	ad.save(a);
//	md.setViewName("uSucess");
//	return md;
	
	
	@RequestMapping("fdrddetails")
	public String rdDetails() {
		
		return "userShowFdRdDetails";
	}
	@RequestMapping("fdrdshowdetails")
	public ModelAndView rdShowDetals(@RequestParam("loginid")String loginid){
		List<UserFdRdAccount> alluser = ufrad.findByLoginid(loginid);
		mv.addObject("alluserobj",alluser);
		
		user = uad.findById(loginid).orElse(new User());
		mv.addObject("userobj",user);
		//System.out.println(alluser);
		mv.setViewName("userShowFdRdDetails");
		return mv;
	}
	
//	@RequestMapping("fddetails")
//	public ModelAndView fdDetails() {
//		
//	}
	
	
	
}



