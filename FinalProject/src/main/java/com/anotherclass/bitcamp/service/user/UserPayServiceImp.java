package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.UserPayDAO;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

@Service   
public class UserPayServiceImp implements UserPayService {
	@Inject
	UserPayDAO userpaydao;

	@Override
	public List<UserPayVO> userPayAllselect(int[] classNoPayArray) {
		
		return userpaydao.userPayAllselect(classNoPayArray);
	}
}
