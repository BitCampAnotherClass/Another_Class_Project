package com.anotherclass.bitcamp.controller.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;
import com.anotherclass.bitcamp.service.creator.CreatorService;

@Controller
@RequestMapping("/creator")
public class ImSiController {
	
	@Inject
	CreatorService creatorService;
	
	@RequestMapping("/testingMenu")
	public ModelAndView testBoard(int no) {
		// 진입시 http://localhost:9090/another/creator/testingMenu?no=1로
		ModelAndView mav = new ModelAndView();
		int boardLimit = 10; // 한페이지에 보여줄 페이지수
		int listFirst = ((no-1)*boardLimit); // 하단 버튼숫자에 따른 페이징 시작번호
		int listLast =  boardLimit*no;
		
		int cnt = creatorService.creatorInquiryBoardCount(); // 컬럼 전체숫자 출력
		System.out.println("총 게시글 수:"+cnt);
		List<UserHomeQnAVO> listPaging = creatorService.creatorInquiryPageing(listFirst+1,listLast);
		System.out.println(listPaging);
		
		mav.addObject("list", listPaging);
		mav.setViewName("creator/question/creatorInquiry");
		return mav;
	}
	
	@RequestMapping("/testingMenu2")
	public String testing() {
		
		return "creator/question/creatorInquiry";
	}
}
