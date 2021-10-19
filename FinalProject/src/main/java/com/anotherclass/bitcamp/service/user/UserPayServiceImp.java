package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.UserPayDAO;
import com.anotherclass.bitcamp.vo.user.BasketVO;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

@Service   
public class UserPayServiceImp implements UserPayService {
	@Inject
	UserPayDAO userpaydao;

	@Override
	public List<UserPayVO> userPayAllselect(int[] classNoPayList ) {		
		return userpaydao.userPayAllselect(classNoPayList);
	}

	@Override
	public UserPayVO userInfo(String logid) {		
		return userpaydao.userInfo(logid);
	}

	@Override
	public int saveBasket(int[] classNoPayList) {	
		return userpaydao. saveBasket(classNoPayList);
	}
	
	@Override
	public int testBasket(BasketVO vo) {
		return userpaydao.testBasket(vo);
	}
}
