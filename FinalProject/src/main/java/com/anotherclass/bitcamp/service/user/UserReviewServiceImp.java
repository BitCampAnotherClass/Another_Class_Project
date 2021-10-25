package com.anotherclass.bitcamp.service.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.UserReviewDAO;
import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

@Service
public class UserReviewServiceImp implements UserReviewService {
	@Inject
	UserReviewDAO userReviewDAO;

	@Override
	public int insertReview(ReviewVO vo) { // 후기 등록
		return userReviewDAO.insertReview(vo);
	}

	@Override
	public ClassVO selectReviewClass(int order_no, String member_id) {
		return userReviewDAO.selectReviewClass(order_no, member_id);
	}

	@Override
	public List<ReviewVO> selectMyReview(ReviewVO vo) {
		return userReviewDAO.selectMyReview(vo);
	}
	
}
