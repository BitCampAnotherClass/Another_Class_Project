package com.anotherclass.bitcamp.service.register;

import com.anotherclass.bitcamp.register.RegisterVO;

public interface RegisterService {
	
	public int userAccountJoin(RegisterVO vo);
	
	public int creatorAccountJoin(RegisterVO vo);
	
	public int adminAccountCreate(RegisterVO vo);
}
