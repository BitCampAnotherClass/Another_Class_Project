package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.BasketVO;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

public interface UserPayDAO {
	public List<UserPayVO> userPayAllselect(int[] classNoPayList );//결제페이지로이동 ->클래스옵션번호가지고 select
	public UserPayVO userInfo(String logid);
	public int saveBasket(int[] classNoPayList);//장바구니에저장
	
	public int testBasket(BasketVO vo);//장바구니저장
	public int delBasket(BasketVO vo);//장바구니삭제
}
