package com.anotherclass.bitcamp.controller.user;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.UserPayService;
import com.anotherclass.bitcamp.vo.user.BasketVO;
import com.anotherclass.bitcamp.vo.user.UserPayVO;

@Controller
public class UserPayController {
	@Inject 
	UserPayService userPayService;

	@RequestMapping(value= "/PayPage", method = RequestMethod.POST)
	public ModelAndView payPage(UserPayVO vo ) {//주문할 클래스옵션번호		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",userPayService.userPayAllselect(vo.getClassNoPayList())); 	
		
		List<UserPayVO> list =  userPayService.userPayAllselect(vo.getClassNoPayList());//삭제?	- 셀렉트한정보잇음	
		mav.setViewName("/user/pay/payPage_info");
		return mav;
	}
	
	@RequestMapping("/memInfo")
	@ResponseBody
	public UserPayVO ajaxMemInfo(String logid) {
		UserPayVO vo =  userPayService.userInfo(logid);
		return vo;
		
	}
	
	@RequestMapping(value="/basketResult")
	public String basketResult() {
		return "/result/BasketResult";
	}
	
	@RequestMapping("/InsertBasketDB")
	@ResponseBody
	public ModelAndView ajaxInsertBasket(UserPayVO vo, HttpSession session) {//장바구니 테이블에 insert 할클래스번호
		
		ModelAndView  mav = new ModelAndView();
		
		String member_id = (String)session.getAttribute("userId"); 
		BasketVO bvo = new BasketVO();
		int[]te= vo.getClassNoPayList();
		bvo.setMember_id(member_id);
		bvo.setHeadcount(1);
		
		int cnt = 0;
		for(int i=0; i<te.length; i++) {
			bvo.setClass_option_no(te[i]);
			cnt = userPayService.testBasket(bvo);//디비에저장함
		}
		
		System.out.println(cnt);
		mav.addObject("cnt",cnt);
		mav.setViewName("redirect:basketResult");
		return mav;
		
	}
	
	
}
