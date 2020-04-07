package com.idea.mmh.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.model.dto.LoginDto;

@Repository
public class LoginDaoImpl implements LoginDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public LoginDto login(LoginDto dto) {
		try {
		dto = sqlSession.selectOne(NAMESPACE+"login", dto);
		}catch(Exception e) {
			System.out.println("ERROR : login");
			e.printStackTrace();
		}
		return dto;
	}
	@Override
	public LoginDto snsLogin(LoginDto dto) {
		try {
			dto = sqlSession.selectOne(NAMESPACE+"snslogin",dto);
		}catch(Exception e) {
			System.out.println("ERROR : snsLogin");
			e.printStackTrace();
		}
		return dto;
	}
	@Override
	public int snsinfo_reg(String id) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"snsregester",id);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("ERROR : snsLogin_reg");
		}
		return res;
	}
	@Override
	public int snsinfo_update(LoginDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE+"snsinfo_update", dto);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("ERROR : snsinfo _ update");
		}
		return res;
	}
}
