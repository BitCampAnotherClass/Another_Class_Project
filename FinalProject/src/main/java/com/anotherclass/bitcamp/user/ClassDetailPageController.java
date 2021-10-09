package com.anotherclass.bitcamp.user;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.ClassDetailPageService;

@Controller
public class ClassDetailPageController {
	@Inject
	ClassDetailPageService classDetailPageService;
	//클래스리스트
	@RequestMapping("/user/classDetailPage/temporaryclasslist")
	public ModelAndView temporaryclasslist() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",classDetailPageService.temporarylistAllSelect());
		mav.setViewName("user/classDetailPage/temporaryclasslist");
		return mav;
		
	}
	
}
