package com.anotherclass.bitcamp.dao.admin;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.vo.admin.MemberMangementVO;

public interface MemberMangementDAO {
	
	public List<MemberMangementVO> MemberList(MemberMangementVO vo);
	
	public int boardLimit();
	
	public List<MemberMangementVO> MemberAccountInfo(String idCheck);
}
