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
	
	
}
