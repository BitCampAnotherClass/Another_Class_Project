package com.anotherclass.bitcamp.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserCommunityController {
	@RequestMapping(value = "/CommunityMain")
	public String CommunityMain() {
		
		return "/user/community/commu_main";
	}

	@RequestMapping(value = "/CommunityContentDetail")
	public String CommunityContentDetail() {
		
		return "/user/community/commu_content_detail";
	}
	
	@RequestMapping(value = "/CommunityNewContent")
	public String CommunityNewContent() {
		
		return "/user/community/commu_new_content";
	}
}
