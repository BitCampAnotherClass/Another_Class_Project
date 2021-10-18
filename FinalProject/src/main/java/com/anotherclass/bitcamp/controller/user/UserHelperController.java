package com.anotherclass.bitcamp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserHelperController {

	@RequestMapping(value = "/UserNotice")
	public String UserNotice() {
		
		return "/user/userHelper/user_Notice";
	}
	
	@RequestMapping(value = "/UserFaq")
	public String UserFaq() {
		
		return "/user/userHelper/user_Faq";
	}
	

}
