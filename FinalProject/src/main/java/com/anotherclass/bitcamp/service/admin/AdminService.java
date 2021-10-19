package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface AdminService {
	
	public String adminAccountCreate(RegisterVO vo);
	
	public List<RegisterVO> MemberList(int numberList, int numberLimitCal);

	public int boardLimit();
	
	public List<RegisterVO> MemberAccountInfo(String idCheck);
}
