package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

public interface UserReviewService {
	
	public ClassVO selectReviewClass(int order_no, String member_id); // 해당 주문 클래스 정보 조회
	public int insertReview(ReviewVO vo); // 후기 등록
	public ReviewVO countTotalMyReview(String member_id); // 나의 후기 총 레코드 수
	public List<ReviewVO> selectMyReview(ReviewVO vo); // 나의 후기 조회
	public ReviewVO countTotalClassReview(int class_no); // 클래스 후기 총 레코드 수
	public List<ReviewVO> selectClassReview(ReviewVO vo); // 클래스 후기 조회
}
