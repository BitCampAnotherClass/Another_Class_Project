package com.anotherclass.bitcamp.dao.user;

import com.anotherclass.bitcamp.vo.user.ReviewVO;

public interface UserReviewDAO {
	
	public int insertReview(ReviewVO vo); // 후기 등록
	// 후기 수정
	// 후기 삭제
	// 메인 후기 조회
	// 나의 후기 조회
	// 강사 후기 조회
}
