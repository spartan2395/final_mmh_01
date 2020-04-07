package com.idea.mmh.model.dao;

import com.idea.mmh.model.dto.LoginDto;

public interface LoginDao {
	String NAMESPACE = "login.";
	
	LoginDto login(LoginDto dto);
	LoginDto snsLogin(LoginDto dto);
	int snsinfo_reg(String id);
	int snsinfo_update(LoginDto dto);
}