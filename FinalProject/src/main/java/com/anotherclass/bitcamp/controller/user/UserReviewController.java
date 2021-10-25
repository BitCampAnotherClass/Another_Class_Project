package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.UserReviewService;
import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

@Controller
public class UserReviewController {
	
	@Inject
	UserReviewService userReviewService;
	
	// 후기 등록
	@RequestMapping("/writeReviewOK")
	public ModelAndView writeReviewOK(ReviewVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int result = userReviewService.insertReview(vo);
		if(result>0) { // 등록 성공
			mav.setViewName("redirect:/mypage/mypage1"); // 주문 내역 화면
		} else { // 등록 실패
			mav.setViewName("redirect:/writeReviewOK"); // 수정해야 함///////////////////////////
		}
		return mav;
	}
	
	// 해당 주문 클래스 정보 가져오기
	@RequestMapping("/reviewClassInfo")
	@ResponseBody
	public ClassVO reviewClassInfo(int order_no, HttpSession session) {
		String member_id = (String)session.getAttribute("userId");
		ClassVO vo = userReviewService.selectReviewClass(order_no, member_id);

		return vo;
	}
	
	
	@RequestMapping(value = "/mypage/review")
	public ModelAndView mypageReview(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
    	mav.setViewName("/user/mypage/myPage_review");
		return mav;
	}
	
	// 나의 후기 불러오기
	@RequestMapping(value = "/myReview")
	@ResponseBody
	public List<ReviewVO> myReview(ReviewVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		vo.setMember_id((String)session.getAttribute("userId"));
		List<ReviewVO> reviewList = userReviewService.selectMyReview(vo);

		return reviewList;
	}
	
	
	
	
	@RequestMapping(value = "/classReview")
	public String classReview() {
		return "/user/classDetailPage/test";
	}
	
	
//	// 사진 첨부 
//	@RequestMapping("/reviewFileUpload")
//	@ResponseBody
//	public String reviewFileUpload(int order_no, HttpSession session) {
//		String member_id = (String)session.getAttribute("userId");
//		ClassVO vo = userReviewService.selectReviewClass(order_no, member_id);
//
//		return "";
//	}
	
	
	
}
