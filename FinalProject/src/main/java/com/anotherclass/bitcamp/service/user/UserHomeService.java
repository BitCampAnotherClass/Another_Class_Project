package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.vo.user.ClassVO;

public interface UserHomeService {
	
	public List<RegisterVO> popularCreator(); // 인기 크리에이터 조회
}
