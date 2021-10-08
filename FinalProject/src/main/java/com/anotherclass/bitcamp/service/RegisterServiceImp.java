package com.anotherclass.bitcamp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.RegisterDAO;
import com.anotherclass.bitcamp.register.RegisterVO;

@Service
public class RegisterServiceImp implements RegisterService {
	
	@Inject
	RegisterDAO registerDao;
	
	@Override
	public int registerJoin(RegisterVO vo) {
		return registerDao.registerJoin(vo);
	}
}
