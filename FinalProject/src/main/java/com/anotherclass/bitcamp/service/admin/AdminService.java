package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.vo.admin.MemberMangementVO;

public interface AdminService {
	
	public String adminAccountCreate(RegisterVO vo);
	
	public List<MemberMangementVO> MemberList(MemberMangementVO vo);

	public int boardLimit();
	
	public List<MemberMangementVO> MemberAccountInfo(String idCheck);
}
