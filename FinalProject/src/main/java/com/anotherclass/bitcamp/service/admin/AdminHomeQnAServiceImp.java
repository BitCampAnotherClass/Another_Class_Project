package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.admin.AdminHomeQnADAO;
import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAPagingVO;
import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAVO;

@Service
public class AdminHomeQnAServiceImp implements AdminHomeQnAService {
	@Inject
	AdminHomeQnADAO adminHomeQnAdao;

	@Override
	public int totalRecordCount(AdminHomeQnAPagingVO pVo) {
		return adminHomeQnAdao.totalRecordCount(pVo);
	}

	@Override
	public List<AdminHomeQnAVO> boardPageSelect(AdminHomeQnAPagingVO pVo) {
		return adminHomeQnAdao.boardPageSelect(pVo);
	}
	
}
