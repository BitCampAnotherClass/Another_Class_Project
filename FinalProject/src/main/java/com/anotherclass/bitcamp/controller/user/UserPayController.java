package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.UserPayService;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

@Controller
public class UserPayController {
	@Inject 
	UserPayService userPayService;

	@RequestMapping(value= "/PayPage", method = RequestMethod.POST)
	public ModelAndView payPage(UserPayVO vo ) {//주문할 클래스옵션번호
		System.out.println("페이컨트롤러들어왔다");
		ModelAndView mav = new ModelAndView();
		//String logid= (String)ses.getAttribute("userId");
		//dao에 갑니다~~ -> 리스트로 받아온 주문할 여러개의 클래스옵션이 담겨져잇슴다
		//회원정보는 -> 주문상세페이지에서 세션에있는 아이디로 ajax통해서 불러줌
		//클래스옵션테이블+클래스+주문테이블에서 원하는 정보 받아와서 vo여러개를 list로 담아와서
		//mav에 저장해주고
		//뷰에서 받아온 리스트를 반복문 돌려서 셋팅
//		List<UserPayVO>  list2 = vo.getClassNoPayList();
//		System.out.println("ss"+list2);		
		mav.addObject("list",userPayService.userPayAllselect(vo.getClassNoPayList())); // 여기가문제??
		List<UserPayVO> list =  userPayService.userPayAllselect(vo.getClassNoPayList());
		
		mav.setViewName("/user/pay/payPage_info");
		return mav;
	}
	
	@RequestMapping("/memInfo")
	@ResponseBody
	public UserPayVO ajaxMemInfo(String logid) {
		UserPayVO vo =  userPayService.userInfo(logid);
		return vo;
		
	}
	
	
}
