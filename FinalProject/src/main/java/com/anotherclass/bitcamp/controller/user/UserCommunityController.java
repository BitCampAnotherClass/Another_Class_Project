package com.anotherclass.bitcamp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserCommunityController {
	@RequestMapping(value = "/CommunityMain")
	public String CommunityMain() {
		
		return "/user/community/commu_main";
	}
}
