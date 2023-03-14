package com.example.demo.user;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="UserFdRdAccount")
public class UserFdRdAccount {

	@Id
	private String accountno;
	private int amount;
	private int duration;
	private double roi;
	private double newamount;
	private String accounttype;
//	private String loginid;
//	public String getLoginid() {
//		return loginid;
//	}
//
//	public void setLoginid(String loginid) {
//		this.loginid = loginid;
//	}

	@ManyToOne(fetch =FetchType.LAZY)
	@JoinColumn(name="loginid" , referencedColumnName = "uemail")
	private User user;
	


	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getAccounttype() {
		return accounttype;
	}

	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}

	public double getRoi() {
		return roi;
	}

	public void setRoi(double d) {
		this.roi = d;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public double getNewamount() {
		return newamount;
	}

	public void setNewamount(double newamount) {
		this.newamount = newamount;
	}
}
