package com.idea.mmh.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idea.mmh.model.dto.MindDto;

@Repository
public class MindDaoImpl implements MindDao{

	@Autowired
	private SqlSessionTemplate sqlSession; // SqlSessionTemplate : SqlSessionFactory.OpenSession ... close ���� �˾Ƽ� ���ݴϴ�.
	
	private static final Logger logger = LoggerFactory.getLogger(MindDaoImpl.class);
	
	@Override
	public List<MindDto> selectList() {
		List<MindDto> list = new ArrayList<MindDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList");
		} catch (Exception e) {
			logger.info("에러 발생 : MindDaoImpl.selectlist");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public MindDto selectOne(int opno) {
		MindDto rs = null;
		
		try {
			rs = sqlSession.selectOne(NAMESPACE+"selectOne",opno);
		} catch (Exception e) {
			logger.info("에러 발생 : MindDaoImpl.selectOne");
			e.printStackTrace();
		}
		
		return rs;
	}

	@Override
	public int insert(MindDto dto) {
		int res = 0;
		
		res = sqlSession.insert(NAMESPACE+"insert",dto);
		
		return res;
	}

	@Override
	public int update(MindDto dto) {
		int res = 0;
		
		res = sqlSession.update(NAMESPACE+"update",dto);
		
		return res;
	}

	@Override
	public int delete(int opno) {
		int res = 0;
		
		res = sqlSession.delete(NAMESPACE+"delete",opno);
		
		return res;
	}

	@Override
	public String test() {
		// TODO Auto-generated method stub
		return null;
	}

}
