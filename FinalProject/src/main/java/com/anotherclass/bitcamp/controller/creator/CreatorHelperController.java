package com.anotherclass.bitcamp.controller.creator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreatorHelperController {

	@RequestMapping(value = "/CreatorNotice")
	public String CreatorNotice() {
		
		return "/creator/creatorHelper/creator_Notice";
	}
	
	@RequestMapping(value = "/CreatorFaq")
	public String CreatorFaq() {
		
		return "/creator/creatorHelper/creator_Faq";
	}
	

}
