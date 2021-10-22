package com.anotherclass.bitcamp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class imsiAccountController {
	
	@RequestMapping("user/mypage/imsi")
	public String imsi() {
		return "/user/mypage/imsi";
	}
}
