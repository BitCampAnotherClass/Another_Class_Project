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
	public List<RegisterVO> MemberList(int numberList, int numberLimitCal){
		return memberMangementDao.MemberList(numberList, numberLimitCal);
	}
	
	@Override
	public int boardLimit() {
		return memberMangementDao.boardLimit();
	}
	
	@Override
	public List<RegisterVO> MemberAccountInfo(String idCheck) {
		return memberMangementDao.MemberAccountInfo(idCheck);
	}
}
