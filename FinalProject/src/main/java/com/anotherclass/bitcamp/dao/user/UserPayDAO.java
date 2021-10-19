package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserPayVO;

public interface UserPayDAO {
	public List<UserPayVO> userPayAllselect(int[] classNoPayList );
	public UserPayVO userInfo(String logid);
}
