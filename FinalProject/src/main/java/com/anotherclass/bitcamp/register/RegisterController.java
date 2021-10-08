package com.anotherclass.bitcamp.register;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.RegisterService;

@Controller
public class RegisterController {
	
	@Inject
	RegisterService registerService;
	
	@RequestMapping("/register")
	public String register() {
		return "register/userRegister";
	}
	
	// 회원가입
	@RequestMapping(value="/registerJoin",method=RequestMethod.POST)
	public ModelAndView userJoin(RegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		int check = registerService.registerJoin(vo);
		if(check>0) {
			
		}else{
	
		}
		mav.setViewName("redirect:/");
		return mav;
	}
}
