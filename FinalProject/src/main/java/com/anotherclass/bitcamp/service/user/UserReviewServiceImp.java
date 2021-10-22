package com.anotherclass.bitcamp.service.user;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.UserReviewDAO;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

@Service
public class UserReviewServiceImp implements UserReviewService {
	@Inject
	UserReviewDAO userReviewDAO;

	@Override
	public int insertReview(ReviewVO vo) { // 후기 등록
		return userReviewDAO.insertReview(vo);
	}
	
}
