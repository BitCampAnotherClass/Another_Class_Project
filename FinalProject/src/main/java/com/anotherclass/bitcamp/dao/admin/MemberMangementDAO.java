package com.anotherclass.bitcamp.dao.admin;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface MemberMangementDAO {
	
	public List<RegisterVO> MemberList(RegisterVO vo);
	
	public int boardLimit(int boardNumber,int boardLimit);
}
