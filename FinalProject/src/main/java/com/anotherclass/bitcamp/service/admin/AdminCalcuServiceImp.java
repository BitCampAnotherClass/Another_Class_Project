package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.admin.AdminCalcuDAO;
import com.anotherclass.bitcamp.vo.admin.AdminCalcuVO;

@Service
public class AdminCalcuServiceImp implements AdminCalcuService {
	
	@Inject
	AdminCalcuDAO adminCalcuDAO;
	
	@Override
	public AdminCalcuVO countTotalAdminCalcu() {
		return adminCalcuDAO.countTotalAdminCalcu();
	}

	@Override
	public List<AdminCalcuVO> selectAdminCalcuList(AdminCalcuVO vo) {
		return adminCalcuDAO.selectAdminCalcuList(vo);
	}
	
	
}
