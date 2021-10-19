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
	@RequestMapping("/InsertBasketDB")
	@ResponseBody
	public int ajaxInsertBasket(UserPayVO vo) {//장바구니 테이블에 insert 할클래스번호
		
		int []a = vo.getClassNoPayList(); //담아온클래스옵션번호		
		System.out.println("배열에담은클래스옵션번호"+a[0]);
		System.out.println(a.length);
		
		List<UserPayVO> list = new ArrayList<UserPayVO>();// 클래스옵션번호 , 이름
		
		for(int i=0; i<a.length; i++) {
			list.set(i, vo);
		}
		return 1;
		
	}
	
	
}
