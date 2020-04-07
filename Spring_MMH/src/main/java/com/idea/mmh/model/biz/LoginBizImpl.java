package com.idea.mmh.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idea.mmh.model.dao.LoginDao;
import com.idea.mmh.model.dto.LoginDto;

@Service
public class LoginBizImpl implements LoginBiz{
	
	@Autowired
	private LoginDao dao;
	
	@Override
	public LoginDto login(LoginDto dto) {
		return dao.login(dto);
	}
	@Override
	public LoginDto snsLogin(LoginDto dto) {
		return dao.snsLogin(dto);
	}
	@Override
	public int snslogin_reg(String id) {
		return dao.snsinfo_reg(id);
	}
	@Override
	public int snslogin_update(LoginDto dto) {
		return dao.snsinfo_update(dto);
	}
}
