package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.UserMyPageDAO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

@Service
public class UserMyPageServiceImp implements UserMyPageService {
	@Inject
	UserMyPageDAO userMyPageDAO;

	@Override
	public List<UserHomeQnAVO> myPageHomePageAsk(String logid) {		
		return userMyPageDAO.myPageHomePageAsk(logid);
	}

	@Override
	public String myPageHpmePageAskReply(int no) {
		return userMyPageDAO.myPageHpmePageAskReply(no);
	}

	@Override
	public List<UserClassDetailVO2> myPageClassAskAll(String logid) {
		return userMyPageDAO.myPageClassAskAll(logid);
	}

	@Override
	public int classAskRepltCheck(int no) {
		return userMyPageDAO.classAskRepltCheck(no);
	}

	@Override
	public UserClassDetailVO2 Replycreatorinfo(int no) {		
		return userMyPageDAO.Replycreatorinfo(no);
	}

	@Override
	public List<UserClassDetailVO> Likedcreator(String logid) {
		return userMyPageDAO.Likedcreator(logid);
	}

	@Override
	public int LikedcreatorCount(String logid) {		
		return userMyPageDAO.LikedcreatorCount(logid);
	}

	@Override
	public int OpenClassCount(String logid) {		
		return userMyPageDAO.OpenClassCount(logid);
	}

	@Override
	public int CancelLikeCreator(int no) {
	return  userMyPageDAO.CancelLikeCreator(no);
	}

	@Override
	public List<UserClassDetailVO> BaskList(String logid) {		
		return userMyPageDAO. BaskList(logid);
	}

	@Override
	public String getCreatorNick(int no) {		
		return userMyPageDAO.getCreatorNick(no);
	}

	@Override
	public int getBasketNum(String logid) {
		
		return userMyPageDAO.getBasketNum(logid);
	}
}
