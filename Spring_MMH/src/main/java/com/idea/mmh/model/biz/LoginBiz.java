package com.idea.mmh.model.biz;

import com.idea.mmh.model.dto.LoginDto;

public interface LoginBiz {
	LoginDto login(LoginDto dto);
	LoginDto snsLogin(LoginDto dto);
	int snslogin_reg(String id);
	int snslogin_update(LoginDto dto);
}
