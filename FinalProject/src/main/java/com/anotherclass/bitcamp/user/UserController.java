package com.anotherclass.bitcamp.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "user/home";
	}
	
	// 화면 보려고 임시 맵핑 --------------------------
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
	
	// 지수
	@RequestMapping(value = "/mypage")
	public String mypage() {
		return "/user/mypage/myPage_order";
	}
	
}
