package com.anotherclass.bitcamp.user;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.ClassDetailPageService;

import com.anotherclass.bitcamp.vo.tempMemberVO;

@Controller
public class ClassDetailPageController {
	@Inject
	ClassDetailPageService classDetailPageService;

	//클래스리스트
	@RequestMapping("/user/classDetailPage/temporaryclasslist")
	public ModelAndView temporaryclasslist() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",classDetailPageService.temporarylistAllSelect());
		mav.setViewName("user/classDetailPage/temporaryclasslist");
		return mav;		
	}
	/*
	//클래스상세페이지로이동
	@RequestMapping("user/classDetailPage/temporaryclassView")
	public ModelAndView classMainPage(int no) {//클래스 리스트에서 클래스명누르면 클레스상세페이지로이동
		ModelAndView mav = new ModelAndView();
	}
	*/
	@RequestMapping("/user/templogin")
	public String loginForm() {
		return "/user/classDetailPage/temploginForm" ;
	}
	//-------------로그인
	@RequestMapping(value="/loginOk", method=RequestMethod.POST)
	   public String loginOk(tempMemberVO vo, HttpSession ses) {
	      //로그인

	         ses.setAttribute("member_id", "jisutestuser");
	         ses.setAttribute("member_name", "사용자지수");
	     
	      return "user/classDetailPage/temporaryhome";
	   }
	   @RequestMapping("/logout")
	   public String logout(HttpSession s) {
	      s.invalidate();
	      return "user/classDetailPage/temporaryhome";
	   }
	
}
