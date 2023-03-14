package com.example.demo.admindao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.admin.Admin;

public interface AdminDao extends CrudRepository<Admin, String> {

}
