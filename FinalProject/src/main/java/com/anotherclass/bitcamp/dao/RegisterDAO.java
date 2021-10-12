package com.anotherclass.bitcamp.dao;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface RegisterDAO {
	
	public int userAccountJoin(RegisterVO vo);
	
	public int creatorAccountJoin(RegisterVO vo);
	
	public int adminAccountCreate(RegisterVO vo);
	
	public RegisterVO loginMember(RegisterVO vo);
}
