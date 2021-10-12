package com.anotherclass.bitcamp.service.register;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.RegisterDAO;
import com.anotherclass.bitcamp.register.RegisterVO;

@Service
public class RegisterServiceImp implements RegisterService {
	
	@Inject
	RegisterDAO registerDao;
	
	@Override
	public int userAccountJoin(RegisterVO vo) {
		return registerDao.userAccountJoin(vo);
	}
	
	@Override
	public int creatorAccountJoin(RegisterVO vo) {
		return registerDao.creatorAccountJoin(vo);
	}
	
	@Override
	public int adminAccountCreate(RegisterVO vo) {
		return registerDao.adminAccountCreate(vo);
	}

	@Override
	public RegisterVO loginMember(RegisterVO vo) {
		return registerDao.loginMember(vo);
	}
	
	
}
