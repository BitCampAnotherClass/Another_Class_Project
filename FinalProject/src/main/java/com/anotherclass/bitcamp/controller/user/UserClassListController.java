package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.ClassListPageService;
import com.anotherclass.bitcamp.vo.user.ClassListVO;


@Controller
public class UserClassListController {
	@Inject
	ClassListPageService classListPageService;
	
	@RequestMapping(value = "/classList")
	public ModelAndView classList(ClassListVO vo) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("cla", classListPageService.ClassList());
		
		mav.setViewName("user/class/class_list");
		return mav;
	}
	@RequestMapping(value = "classList/sortPrice")
	@ResponseBody
	public List<ClassListVO> sortByPrice(ClassListVO vo){
		List<ClassListVO> result = classListPageService.sortByPrice(vo);
		return result;	
	}
	@RequestMapping(value = "classList/sortDate")
	@ResponseBody
	public List<ClassListVO> sortByApplyDate(ClassListVO vo){
		List<ClassListVO> result = classListPageService.sortByApplyDate(vo);
		return result;	
	}
	@RequestMapping(value = "classList/rangePrice")
	@ResponseBody
	public List<ClassListVO> rangePrice(int minp, int maxp){
		
		List<ClassListVO> result = classListPageService.rangePrice(minp,maxp);
		
		System.out.print(minp);
		return result;
	}
}
