package com.example.demo.admin;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {

	@Id
	private String aid;
	private String aemail;
	private String afname;
	private String alname;
	private String agender;
	private String aphoneno;
	private String apassword;
	private String address;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getAfname() {
		return afname;
	}
	public void setAfname(String afname) {
		this.afname = afname;
	}
	public String getAlname() {
		return alname;
	}
	public void setAlname(String alname) {
		this.alname = alname;
	}
	public String getAgender() {
		return agender;
	}
	public void setAgender(String agender) {
		this.agender = agender;
	}
	public String getAphoneno() {
		return aphoneno;
	}
	public void setAphoneno(String aphoneno) {
		this.aphoneno = aphoneno;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
