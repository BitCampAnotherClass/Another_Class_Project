package com.anotherclass.bitcamp.service.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.register.RegisterDAO;
import com.anotherclass.bitcamp.register.RegisterVO;

@Service
public class AdminServiceImp implements AdminService {
	
	@Inject
	RegisterDAO registerDao;
	
	@Override
	public String adminAccountCreate(RegisterVO vo) {
		return registerDao.adminAccountCreate(vo);
	}

	
	
}
