package com.idea.mmh.model.biz;

import java.util.List;

import com.idea.mmh.model.dto.PoitDto;

public interface PoitBiz {

	public List<PoitDto> selectList();
	public PoitDto selectOne(int opno);
	public int insert(PoitDto dto);
	public int update(PoitDto dto);
	public int delete(int opno);
	
	public String test();
}