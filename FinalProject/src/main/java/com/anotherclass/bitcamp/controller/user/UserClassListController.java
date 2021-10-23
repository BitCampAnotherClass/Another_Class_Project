package com.anotherclass.bitcamp.controller.user;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.ClassListPageService;


@Controller
public class UserClassListController {
	@Inject
	ClassListPageService classListPageService;
	
	@RequestMapping(value = "/classList")
	public ModelAndView classList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cla", classListPageService.ClassList());
		mav.setViewName("user/class/class_list");
		return mav;
	}
}
