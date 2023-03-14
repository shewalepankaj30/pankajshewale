package com.example.demo.userdao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.user.UserFdRdAccount;

public interface UserFdRdAccountDao extends CrudRepository<UserFdRdAccount, String> {

	@Query("select max(accountno) from UserFdRdAccount")
	public String getMaxAccountNo();

	@Query("from UserFdRdAccount where loginid=?1")
	public List<UserFdRdAccount> findByLoginid(String loginid);
}
