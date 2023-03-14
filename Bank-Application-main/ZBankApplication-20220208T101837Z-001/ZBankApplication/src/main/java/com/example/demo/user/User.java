package com.example.demo.user;

import java.util.ArrayList;
import java.util.List;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;

import javax.persistence.OneToMany;



@Entity
public class User {

	@Id
	private String uemail;
	private String upassword;
	private String ufname;
	private String ulname;
	private String ugender;
	private String uaadhar;
	private String upan;
	private String uphoneno;
	private String uaddress;
	private String ucompanyid;
	private String ubussinessid;
	private String uaccountno;
	private String uifsc;
	private String uaccounttype;
	private double ubalance;
	
//	@OneToMany(mappedBy = "user1" ,  fetch = FetchType.EAGER)
//	private List<UserAccountDetails> uadetails = new ArrayList<UserAccountDetails>() ;
	
	@OneToMany(mappedBy = "user"  , fetch = FetchType.EAGER)
	private List<UserFdRdAccount> fdrdaccount = new ArrayList<UserFdRdAccount>();
	
	public double getUbalance() {
		return ubalance;
	}
	public void setUbalance(double total) {
		this.ubalance = total;
	}
	public String getUaccounttype() {
		return uaccounttype;
	}
	public void setUaccounttype(String uaccounttype) {
		this.uaccounttype = uaccounttype;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public String getUaccountno() {
		return uaccountno;
	}
	public void setUaccountno(String uaccountno) {
		this.uaccountno = uaccountno;
	}
	public String getUifsc() {
		return uifsc;
	}
	public void setUifsc(String uifsc) {
		this.uifsc = uifsc;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUfname() {
		return ufname;
	}
	public void setUfname(String ufname) {
		this.ufname = ufname;
	}
	public String getUlname() {
		return ulname;
	}
	public void setUlname(String ulname) {
		this.ulname = ulname;
	}
	public String getUaadhar() {
		return uaadhar;
	}
	public void setUaadhar(String uaadhar) {
		this.uaadhar = uaadhar;
	}
	public String getUpan() {
		return upan;
	}
	public void setUpan(String upan) {
		this.upan = upan;
	}
	public String getUphoneno() {
		return uphoneno;
	}
	public void setUphoneno(String uphoneno) {
		this.uphoneno = uphoneno;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUcompanyid() {
		return ucompanyid;
	}
	public void setUcompanyid(String ucompanyid) {
		this.ucompanyid = ucompanyid;
	}
	public String getUbussinessid() {
		return ubussinessid;
	}
	public void setUbussinessid(String ubussinessid) {
		this.ubussinessid = ubussinessid;
	}
	

	
}
