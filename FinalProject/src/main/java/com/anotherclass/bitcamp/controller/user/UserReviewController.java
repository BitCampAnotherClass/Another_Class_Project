package com.anotherclass.bitcamp.controller.user;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.UserReviewService;
import com.anotherclass.bitcamp.vo.user.ReviewVO;

@Controller
public class UserReviewController {
	
	@Inject
	UserReviewService userReviewService;
	
	// 후기 등록
	@RequestMapping("/writeReviewOK")
	public ModelAndView writeReviewOK(ReviewVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		System.out.println(vo.getStar());
		System.out.println(vo.getContent());
		vo.setOrder_no(10014); // 임시 주문 넘버
		
		int result = userReviewService.insertReview(vo);
		if(result>0) { // 등록 성공
			mav.setViewName("redirect:/mypage/mypage1"); // 주문 내역 화면
		} else { // 등록 실패
			mav.setViewName("redirect:/writeReviewOK"); // 수정해야 함///////////////////////////
		}
		return mav;
	}
}
