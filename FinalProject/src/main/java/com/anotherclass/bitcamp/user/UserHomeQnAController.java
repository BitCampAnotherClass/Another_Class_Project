package com.anotherclass.bitcamp.user;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.UserHomeQnAService;

@Controller
public class UserHomeQnAController {
	@Inject
	UserHomeQnAService userHomeQnAService;
	
	//고객지원 - 홈페이지문의->리스트목록보기
	@RequestMapping("/HomeQnAAsk/list")
	public ModelAndView HomeQnAAskList() {
		ModelAndView mav = new ModelAndView();	
		mav.addObject("list",userHomeQnAService.userHomeQnAAllSelect());		
		mav.setViewName("/user/HomeQnA/userHelper_HomeQnA_list");		
		return mav;
	}
	//제목누르면 글보기
	@RequestMapping("/HomeQnAAsk/view")
	public ModelAndView HomeQnAAskView(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",userHomeQnAService.userHomeQnAView(no));
		mav.setViewName("/user/HomeQnA/userHelper_HomeQnA_view");
		return mav;
	}
	
	//수정페이지로 이동
	@RequestMapping("/HomeQnAAsk/Edit")
	public ModelAndView HomeQnAAskEdit(int no) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
}
