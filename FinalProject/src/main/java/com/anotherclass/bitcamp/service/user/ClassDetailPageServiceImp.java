package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.ClassDetailPageDAO;
import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;
@Service
public class ClassDetailPageServiceImp implements ClassDetailPageService {

	@Inject
	ClassDetailPageDAO classDetailPageDAO;
	
	@Override
	public List<ClassVO> temporarylistAllSelect() {//지울것
		
		return classDetailPageDAO.temporarylistAllSelect();
	}

	@Override
	public UserClassDetailVO userClassDetailAllSelect(int no) {
		
		return classDetailPageDAO.userClassDetailAllSelect(no);
	}

	@Override
	public List<UserClassDetailVO> userSelectOptionAllSelect(String datedate, int no) {
		 //List<UserClassDetailVO> list = classDetailPageDAO.userSelectOptionAllSelect(datedate,no);
		  
		// UserClassDetailVO vo2 = list.get(0);
		// System.out.println(vo2.getStart_date());
		 
		return classDetailPageDAO.userSelectOptionAllSelect(datedate,no);
	}

	@Override
	public UserClassDetailVO classLikeCount(int no) {
		
		return classDetailPageDAO.classLikeCount(no);
	}

	@Override
	public int classLikeCheck(int no, String logid) {
	
		return classDetailPageDAO.classLikeCheck(no,logid);
	}

	@Override
	public int classLikeInsert(int no, String logid) {
		
		return classDetailPageDAO.classLikeInsert(no,logid);
	}

	@Override
	public int classLikeDelete(int no, String logid) {
		
		return classDetailPageDAO.classLikeDelete(no,logid);
	}

	@Override
	public List<UserClassDetailVO2> userClassDetailAskAllSelect(int no) {
		
		return classDetailPageDAO.userClassDetailAskAllSelect(no);
	}

	@Override
	public int AskReplyCheck(int no) {
		
		return classDetailPageDAO.AskReplyCheck(no);
	}

	@Override
	public List<UserClassDetailVO2> userClassDetailAskReplySelect(int no) {
		
		return classDetailPageDAO.userClassDetailAskReplySelect(no);
	}


	
	

}
