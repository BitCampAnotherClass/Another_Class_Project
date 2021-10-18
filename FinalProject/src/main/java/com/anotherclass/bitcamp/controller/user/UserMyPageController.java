package com.anotherclass.bitcamp.controller.user;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anotherclass.bitcamp.service.user.UserMyPageService;

@Controller
public class UserMyPageController {
	@Inject
	UserMyPageService userMyPageService;
	
	
	@RequestMapping(value = "/mypage/mypage1")//주문내역
	public String mypage() {
		return "/user/mypage/myPage_order";
	}
	@RequestMapping(value = "/mypage/mypage2")//장바구니
	public String mypage2() {
		return "/user/mypage/myPage_shoppingbasket";
	}
	@RequestMapping(value = "/mypage/mypage3")//문의
	public String mypage3() {
		return "/user/mypage/myPage_Ask";
	}	
	@RequestMapping(value = "/mypage/mypage4") //좋아요목록
	public String mypage4() {
		return "/user/mypage/myPage_Creatorlike";
	}	
	@RequestMapping(value = "/mypage/mypage5") //좋아요목록
	public String mypage5() {
		return "/user/mypage/myPage_Classlike";
	}	
	
	
}
