package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.ClassDetailPageDAO;
import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.userClassDetailVO;
@Service
public class ClassDetailPageServiceImp implements ClassDetailPageService {

	@Inject
	ClassDetailPageDAO classDetailPageDAO;
	
	@Override
	public List<ClassVO> temporarylistAllSelect() {//지울것
		
		return classDetailPageDAO.temporarylistAllSelect();
	}

	@Override
	public userClassDetailVO userClassDetailAllSelect(int no) {
		
		return classDetailPageDAO.userClassDetailAllSelect(no);
	}

	@Override
	public List<userClassDetailVO> userSelectOptionAllSelect(String datedate, String no) {
	
		return classDetailPageDAO.userSelectOptionAllSelect(datedate,no);
	}

	
	

}
