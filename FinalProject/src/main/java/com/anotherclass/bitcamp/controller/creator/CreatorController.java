package com.anotherclass.bitcamp.controller.creator;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.MakeClassApplyService;
import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassDateTimeVO;
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
	public ModelAndView makeClass(HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cate", makeClassApplyService.makeClassCategoryL());
		mav.setViewName("/creator/makeClass");
		return mav;
	}
	
	
	@RequestMapping(value="/makeClassOk", method=RequestMethod.POST)
	public ModelAndView creatClass(CreatorMakeClassVO vo,CreatorMakeClassDateTimeVO vo2, HttpServletRequest req,HttpSession ses) {
		
		ModelAndView mav = new ModelAndView();
		vo.setMember_id("test100");///////////////////////아이디 세션
		
		int result = makeClassApplyService.makeClassApply(vo);
		String vo2GetStartDate = vo2.getStart_date();
		String vo2GetEndDate = vo2.getEnd_date();
		
		String[] startTimeResult = vo2GetStartDate.split(",");
		String[] endTimeResult = vo2GetEndDate.split(",");		
		System.out.println(startTimeResult.length);
		
		int result_date=0;
			for(int i=0; i < startTimeResult.length; i++) {
				
			vo2.setStart_date(startTimeResult[i]);
			vo2.setEnd_date(endTimeResult[i]);
			vo2.setClass_no(vo.getClass_no()); 
			vo2.setAll_headcount(vo.getMax_headcount());
			result_date = makeClassApplyService.makeClassApplyDateTime(vo2);
			
			};
		
		if(result == 1 && result_date ==1) {
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
	public List<CreatorClassCategoryVO> ajaxList(int no) {
		List<CreatorClassCategoryVO> result = makeClassApplyService.makeClassCategoryS(no);
		
		System.out.println("카테고리 디비");
		
		return result;
	}
}
