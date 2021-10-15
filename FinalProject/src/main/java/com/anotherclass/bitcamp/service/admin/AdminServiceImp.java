package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.admin.MemberMangementDAO;
import com.anotherclass.bitcamp.dao.register.RegisterDAO;
import com.anotherclass.bitcamp.register.RegisterVO;

@Service
public class AdminServiceImp implements AdminService {
	
	@Inject
	RegisterDAO registerDao;
	
	@Inject
	MemberMangementDAO memberMangementDao;
	
	@Override
	public String adminAccountCreate(RegisterVO vo) {
		return registerDao.adminAccountCreate(vo);
	}

	@Override
	public List<RegisterVO> MemberList(RegisterVO vo) {
		return memberMangementDao.MemberList(vo);
	}
	
	@Override
	public int boardLimit(RegisterVO vo) {
		return memberMangementDao.boardLimit(vo);
	}
}
