package com.anotherclass.bitcamp.controller.creator;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.MakeClassApplyService;
import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassVO;

@Controller
@RequestMapping("/creator")
public class CreatorController {
	@Inject
	MakeClassApplyService makeClassApplyService;
	
	@RequestMapping("/")
	public String creator() {
		return "creator/creator";
	}
	@RequestMapping("/historyback")
	public String historyBack() {
		return "creator/historyback";
	}
	
	@RequestMapping("/makeClass")
	public ModelAndView makeClass() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cate", makeClassApplyService.makeClassCategoryL());
		mav.setViewName("/creator/makeClass");
		return mav;
	}
	
	
	@RequestMapping(value="/makeClassOk", method=RequestMethod.POST)
	public ModelAndView creatClass(CreatorMakeClassVO vo, HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		vo.setMember_id("test100");
		int result = makeClassApplyService.makeClassApply(vo);
		if(result == 1) {
			System.out.println("등록성공");
			mav.setViewName("/creator/makeClassOk");
		}
		return mav;
	}
	   
	@RequestMapping("/modifyClass")
	public String modifyClass() {
	    return "creator/modifyClass";
	}
	   
	@RequestMapping("/creatorChannel")
	public String creatorChannel() {
	    return "creator/creatorChannel";
	}
	
	@RequestMapping("/classMain")
	public String classMain() {
	    return "user/classDetailPage/classMain";
	}
	
	// 클래스 통계
	@RequestMapping(value = "/incomeChart")
	public String incomeChart() {
		return "creator/income/income_chart";
	}
	@RequestMapping(value="makeClass/ajaxList")
	@ResponseBody
	public List<CreatorClassCategoryVO> ajaxList(CreatorClassCategoryVO vo, int no) {
		List<CreatorClassCategoryVO> result = makeClassApplyService.makeClassCategoryS(no);
		
		System.out.println("dddddd");
		
		return result;
	}
}
