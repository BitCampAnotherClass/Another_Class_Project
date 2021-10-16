package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserPayVO;

public interface UserPayService {
	public List<UserPayVO> userPayAllselect(int[] classNoPayArray);
}
