package com.anotherclass.bitcamp.controller.user;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.user.UserMyPageService;

@Controller
public class imsiAccountController {
	
	@Inject
	UserMyPageService userMyPageService;
	
	@RequestMapping("user/mypage/Myinformation")
	public ModelAndView Myinformation(HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		//String member_id = (String)ses.getAttribute("userId"); 
		//System.out.println(member_id);
		mav.addObject("vo", userMyPageService.MemberInfo("test103"));
		mav.setViewName("user/mypage/myPage_MyInformation");
		return mav;
	}
	
	@RequestMapping(value ="user/mypage/MyinformationEdit",method = RequestMethod.POST )
	public ModelAndView MyinformationEdit(RegisterVO vo,HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		//String member_id = (String)ses.getAttribute("userId"); 
		//System.out.println(member_id);
		vo.setMember_id("test103");
		int cnt = userMyPageService.MemberInfoEdit(vo);
		System.out.println(cnt);
		mav.setViewName("redirect:Myinformation");
		return mav;
	}
}
