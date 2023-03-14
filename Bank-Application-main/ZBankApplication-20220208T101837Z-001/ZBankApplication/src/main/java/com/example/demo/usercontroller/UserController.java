package com.example.demo.usercontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.user.User;
import com.example.demo.user.UserAccountDetails;
import com.example.demo.userdao.UserAccountDetailsDao;
import com.example.demo.userdao.UserDao;

@Controller
@RequestMapping("user")
public class UserController {
	User u;
	ModelAndView mv = new ModelAndView();
	@Autowired
	UserDao ud;
	
	@Autowired
	UserAccountDetailsDao uadd;
	UserAccountDetails uad;

	@RequestMapping("page")
	public String userPage() {
		return "userLogin";
	}

	@RequestMapping("new")
	public String newUser() {

		return "userNew";
	}

	@RequestMapping("saving")
	public String savingAcc() {
		return "userSaving";
	}

	@RequestMapping("salary")
	public String salaryAcc() {
		return "userSalary";
	}

	@RequestMapping("current")
	public String currentAcc() {
		return "userCurrent";
	}

	@RequestMapping("created")
	public String accountCreated(User u ) {//, @RequestParam("uemail") String uemail) {
		
		this.u = u;
		//u = ud.findById(uemail).orElse(new User());
		//if(!uemail.equals(u.getUemail())) {
		ud.save(u);
		return "userCreted";
//		}else {
//			return "userNotCreated";
//		}
		
	}

	@RequestMapping("loggedin")
	public ModelAndView accountLogedin(User u, @RequestParam("uemail") String uemail,
			@RequestParam("upassword") String upass) {
		u = ud.findById(uemail).orElse(new User());
		if (u != null) {
			if (uemail.equals(u.getUemail()) && upass.equals(u.getUpassword())) {
				mv.addObject("uobj",u);
				return mv = new ModelAndView("userLoggedin");
			} else {
				return mv = new ModelAndView("userLogin");
			}
		} else {
			return mv = new ModelAndView("userLogin");
		}
	}
	@RequestMapping("afterloggedin")
	public String afterLoggedin() {
		return "userLoggedin";
	}
	@RequestMapping("forget")
	public String forgetPassword() {
		return "userForget";
	}

	@RequestMapping("updatepassword")
	public ModelAndView updatePassword(User u, @RequestParam("uemail") String uemail,
			@RequestParam("upassword") String upass) {
		this.u = ud.findById(uemail).orElse(new User());
		if (uemail.equals(u.getUemail())) {
			u.setUpassword(upass);
			ud.save(u);
			mv.setViewName("userLogin");
			return mv;
		} else {
			mv.setViewName("userForget");
			return mv ;
		}

	}
	
	@RequestMapping("displayuserforuser")
	public ModelAndView displayDataForUser(@RequestParam("uemail") String uemail) {

		u = ud.findById(uemail).orElse(new User());
		mv = new ModelAndView("userDetailsforUser");
		mv.addObject("uobj", u);
		return mv;
	}
	@RequestMapping("displayuserforadmin")
	public ModelAndView displayDataForAdmin(@RequestParam("uemail") String uemail) {

		u = ud.findById(uemail).orElse(new User());
		mv.setViewName("userDetailsforAdmin");
		mv.addObject("uobj", u);
		return mv;
	}

	@RequestMapping("updatepage")
	public String updatePage() {
		return "userUpdateByAdmin";
	}

	@RequestMapping("updateAccountByAdmin")
	public ModelAndView updateUserByAdmin(@RequestParam("uemail") String uemail) {
		mv.setViewName("userUpdateByAdmin");
		u = ud.findById(uemail).orElse(new User());
		mv.addObject("uobj1" ,u);
		ud.save(u);
		return mv;
	}
	
	@RequestMapping("updatedUserProfile")
	public String updatedUserProfile(@RequestParam("uemail") String uemail, @RequestParam("uaccountno") String accno , @RequestParam("uifsc")String uifsc) {
		u = ud.findById(uemail).orElse(new User());
		if(!accno.equals(u.getUaccountno())) {
		u.setUaccountno(accno);
		u.setUifsc(uifsc);
		ud.save(u);
		return "adminLoggedin";
		}
		else {
			return "userUpdateByAdmin";
		}
		
		
	}
	@RequestMapping("showall")
	public ModelAndView showAllUserDetail() {
		mv.setViewName("userShowAll");
		List<User> all= (List<User>) ud.findAll();
		mv.addObject("allobj",all);
		//System.out.println(all);
		
		return mv;
		
	}
	
	@RequestMapping("updatepagebyuser")
	public ModelAndView updatepage(@RequestParam("uemail") String uemail) {
		u=ud.findById(uemail).orElse(new User());
		mv.setViewName("userUpdateDetail");
		mv.addObject("uobj",u);
		
		return mv;
		
	}
	
	@RequestMapping("updatedbyuser")
	public ModelAndView updatedByUser(@RequestParam("uemail")String uemail,@RequestParam("ufname")String ufname, @RequestParam("ulname") String ulname ,@RequestParam("upassword")String upassword, @RequestParam("uaadhar")String uaadhar ,@RequestParam("upan")String upan , @RequestParam("uphoneno")String uphoneno ,@RequestParam("uaddress")String uaddress ) {
	
		u=ud.findById(uemail).orElse(new User());
		u.setUfname(ufname);
		u.setUlname(ulname);
		u.setUpassword(upassword);
		u.setUaadhar(uaadhar);
		u.setUpan(upan);
		u.setUphoneno(uphoneno);
		u.setUaddress(uaddress);
		ud.save(u);
		mv.setViewName("userUpdated");
		return mv;
	}
	
	@RequestMapping("transcations")
	public String transcation() {
		return "userTranscation";
	}
	@RequestMapping("deposite")
	public String userDeposite() {
		return "userDeposite";
	}
	@RequestMapping("withdraw")
	public String userWithDraw() {
		return "userWithDraw";
	}
	
	@RequestMapping("depositeSucess")
	public String userDepositeSucess(UserAccountDetails uad ,@RequestParam("uemail")String uemail , @RequestParam("upassword")String upass,@RequestParam("udeposite") double udepo , @RequestParam("currentdate") String currentdate) {
		u =ud.findById(uemail).orElse(new User());
		if(u!=null) {
			if(uemail.equals(u.getUemail()) && upass.equals(u.getUpassword())) {
				double total = u.getUbalance()+udepo;
				u.setUbalance(total);
				
				ud.save(u);
				this.uad=uad;
				
//				uad.setSeno(1);
				int a = uadd.getMaxSeno();
//				System.out.println(a);
				a++ ;
//				System.out.println(a);
			
			//	System.out.println(b);
				uad.setSeno(a);
				System.out.println(uad.getSeno());

				uad.setUdeposite(udepo);
				uad.setUbalance(total);
				uad.setCurrentdate(currentdate);
				uadd.save(uad);
				
				return "userDepositeSucessfully";
			}else
			{
				return "userTranscationUnsucesfully";
			}
		
		}else {
			return "userTranscationUnsucesfully";
		}
		
	}
	@RequestMapping("withdrawSucess")
	public String userWithDrawSucess(UserAccountDetails uad, @RequestParam("uemail")String uemail , @RequestParam("upassword")String upass,@RequestParam("uwithdraw") double uwith ,@RequestParam("currentdate") String currentdate) {
		u =ud.findById(uemail).orElse(new User());
		if(u!=null) {
			if(uemail.equals(u.getUemail()) && upass.equals(u.getUpassword())) {
				double total = u.getUbalance()-uwith;
				
				u.setUbalance(total);
				ud.save(u);
				this.uad=uad;
				int a = uadd.getMaxSeno();
				a++;
				uad.setSeno(a);
				uad.setUbalance(total);
				uad.setUwithdraw(uwith);
				uad.setCurrentdate(currentdate);

				uadd.save(uad);
				
				return "userWithdrawSucessfully";
			}else
			{
				return "userTranscationUnsucesfully";
			}
		
		}else {
			return "userTranscationUnsucesfully";
		}
		
	}
	@RequestMapping("ministatement")
	public String userMiniStatement() {
		
		return "userMiniStatement";
	}
	@RequestMapping("ministatementsucess")
	public ModelAndView userMiniStatemenSucess(@RequestParam("uemail") String uemail) {
		List<UserAccountDetails> u11 = uadd.findByUemail(uemail);
		mv.addObject("u11obj",u11);
		mv.setViewName("userMiniStatement");
		return mv;
	}
	
	@RequestMapping("fdaccount")
	public String userFdAccount() {
		return "userFdAccount";
	}
	
	@RequestMapping("rdaccount")
	public String userRdAccount() {
		return "userRdAccount";
	}
		
	@RequestMapping("fdnew")
	public ModelAndView userNewFD() {
		//mv.addObject("uobj",u);
		mv.setViewName("userNewFd");
		return mv;
	}
	@RequestMapping("rdnew")
	public ModelAndView userNewRD() {
		//mv.addObject("uobj",u);
		mv.setViewName("userNewRd");
		return mv;
	}
	
}
