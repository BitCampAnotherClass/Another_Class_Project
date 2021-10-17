package com.anotherclass.bitcamp.controller.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;
import com.anotherclass.bitcamp.service.creator.CreatorService;

@Controller
@RequestMapping("/creator")
public class ImSiController {
	
	@Inject
	CreatorService creatorService;
	
	@RequestMapping("/testingMenu")
	public ModelAndView testBoard() {
		ModelAndView mav = new ModelAndView();
		List<CreatorInquiryVO>  list = creatorService.creatorInquiry();
		mav.addObject("list", list);
		mav.setViewName("creator/question/creatorInquiry");
		return mav;
	}
}
