package com.anotherclass.bitcamp.controller.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.register.HashingSeting;
import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private HashingSeting hashing = new HashingSeting();
	
	@Inject
	AdminService adminService;
	
	@RequestMapping("/")
	public String admin() {
		return "admin/admin";
	}
	
	@RequestMapping(value="/userManagement")
	public String userManagement() {
		return "admin/MemberManagement/userManagement";
	}
	
	@RequestMapping(value="/creatorManagement")
	public String creatorManagement() {
		return "admin/MemberManagement/creatorManagement";
	}
	
	@RequestMapping(value="/adminTest")
	public String adminTest() {
		return "admin/adminTest";
	}
	
	@RequestMapping(value="/adminAccountMake", method = RequestMethod.POST)
	public ModelAndView adminAccountMake(RegisterVO vo)throws Exception {
		ModelAndView mav = new ModelAndView();
		vo.setMember_pw(hashing.setEncryption(vo.getMember_pw(),vo.getMember_id()));
		adminService.adminAccountCreate(vo);
		String check =vo.getAdditional_information_two();
		System.out.println(check);
		
		if(check=="NOT") {
			mav.setViewName("redirect:/");
		}else {
			
		}
		
		mav.setViewName("redirect:/");
		return mav;
	}
	
}
