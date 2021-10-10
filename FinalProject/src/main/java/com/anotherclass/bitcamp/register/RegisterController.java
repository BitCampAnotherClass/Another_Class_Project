package com.anotherclass.bitcamp.register;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.register.RegisterService;

@Controller
public class RegisterController {
	
	@Inject
	RegisterService registerService;
	
	@RequestMapping("/register")
	public String register() {
		return "register/userRegister";
	}
	
	// 유저 회원가입
	@RequestMapping(value="/userJoin",method=RequestMethod.POST)
	public ModelAndView userJoin(RegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		int check = registerService.userAccountJoin(vo);
		if(check>0) {
			
		}else{
			
		}
		mav.setViewName("redirect:/");
		return mav;
	}
	
	// 강사 회원가입
	@RequestMapping(value="/creatorJoin",method=RequestMethod.POST)
	public ModelAndView creatorJoin(RegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		int check = registerService.creatorAccountJoin(vo);
		if(check>0) {
			
		}else{
			
		}
		mav.setViewName("redirect:/");
		return mav;
	}
}
