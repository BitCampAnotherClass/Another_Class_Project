package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

public interface UserReviewDAO {
	
	public ClassVO selectReviewClass(int order_no, String member_id); // 해당 주문 클래스 정보 조회
	public int insertReview(ReviewVO vo); // 후기 등록
	public List<ReviewVO> selectMyReview(ReviewVO vo); // 나의 후기 조회
	// 후기 수정
	// 후기 삭제
	// 강사 후기 조회
}
