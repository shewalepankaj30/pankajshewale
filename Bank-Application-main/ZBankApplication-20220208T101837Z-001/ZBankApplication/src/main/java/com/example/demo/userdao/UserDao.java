package com.example.demo.userdao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.user.User;

public interface UserDao extends CrudRepository<User, String> {

}
