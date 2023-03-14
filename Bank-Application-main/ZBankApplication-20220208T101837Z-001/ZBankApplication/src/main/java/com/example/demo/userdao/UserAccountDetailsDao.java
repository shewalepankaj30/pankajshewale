package com.example.demo.userdao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.user.UserAccountDetails;

public interface UserAccountDetailsDao extends CrudRepository<UserAccountDetails, String> {

	@Query("select max(seno) from UserAccountDetails")
	public int getMaxSeno();
	
	public List<UserAccountDetails> findByUemail(String uemail);
}
