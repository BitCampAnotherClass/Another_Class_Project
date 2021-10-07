package com.anotherclass.bitcamp.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "user/home";
	}
	
	// 임시 맵핑 --------------------------
	// 은정
	@RequestMapping(value = "/login")
	public String login() {
		return "register/login";
	}
	
	@RequestMapping(value = "/classMap")
	public String classMap() {
		return "user/class/class_map";
	}
	
	@RequestMapping(value = "/incomeChart")
	public String incomeChart() {
		return "creator/income/income_chart";
	}
	
	@RequestMapping(value = "/creatorHome")
	public String creatorHome() {
		return "creator/creator";
	}
	
	@RequestMapping(value = "/mypageReview")
	public String mypageReview() {
		return "/user/mypage/myPage_review";
	}
	
	@RequestMapping(value = "/classReview")
	public String classReview() {
		return "/user/classDetailPage/test";
	}

	
	
	// 지수
	@RequestMapping(value = "/mypage")
	public String mypage() {
		return "/user/mypage/myPage_order";
	}
	
	@RequestMapping(value = "/classMainPage")
	public String classMainPage() {
		return "/user/classDetailPage/classMain";
	}
	
	@RequestMapping(value = "/payPage")
	public String payPage() {
		return "/user/pay/payPage_info";
	}
}
