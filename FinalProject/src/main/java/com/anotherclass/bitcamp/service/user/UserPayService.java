package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.BasketVO;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

public interface UserPayService {
	public List<UserPayVO> userPayAllselect(int[] classNoPayList );
	public UserPayVO userInfo(String logid);
	public int saveBasket(int[] classNoPayList);
	
	public int testBasket(BasketVO vo);
	public int delBasket(BasketVO vo);;
}
