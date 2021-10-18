package com.anotherclass.bitcamp.dao.register;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface RegisterDAO {
	
	public int userAccountJoin(RegisterVO vo);
	
	public int creatorAccountJoin(RegisterVO vo);
	
	public String adminAccountCreate(RegisterVO vo);
	
	public RegisterVO loginUser(RegisterVO vo);
	
	public String logIdCheck(RegisterVO vo);
}
