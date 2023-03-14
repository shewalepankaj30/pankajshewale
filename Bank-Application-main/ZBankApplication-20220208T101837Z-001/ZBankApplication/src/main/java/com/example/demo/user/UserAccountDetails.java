package com.example.demo.user;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class UserAccountDetails {
	@Id
	private int seno;
	
	private String uemail;
	private double udeposite;
	private double uwithdraw;
	private double ubalance;
	private String currentdate;
	public String getCurrentdate() {
		return currentdate;
	}
	public void setCurrentdate(String currentdate) {
		this.currentdate = currentdate;
	}
	public int getSeno() {
		return seno;
	}
	public void setSeno(int seno) {
		this.seno = seno;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public double getUdeposite() {
		return udeposite;
	}
	public void setUdeposite(double udeposite) {
		this.udeposite = udeposite;
	}
	public double getUwithdraw() {
		return uwithdraw;
	}
	public void setUwithdraw(double uwithdraw) {
		this.uwithdraw = uwithdraw;
	}
	public double getUbalance() {
		return ubalance;
	}
	public void setUbalance(double ubalance) {
		this.ubalance = ubalance;
	}
	
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name="userid" , referencedColumnName = "uemail")
//	private User user1;

	

	

	

	
}
