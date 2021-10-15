package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface AdminService {
	
	public String adminAccountCreate(RegisterVO vo);
	
	public List<RegisterVO> MemberList(RegisterVO vo);

	public int boardLimit(RegisterVO vo);
}
