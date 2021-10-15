package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.register.HashingSeting;
import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;

@Controller
@RequestMapping("/admin")
public class MemberMangementController {
	
	@Inject
	AdminService adminService;
	
	private HashingSeting hashing = new HashingSeting();
	
	@RequestMapping("/MemberMangement/userAccountList")
	@ResponseBody
	public List<RegisterVO> userList(RegisterVO vo){
		System.out.println("LIST 컨트롤러 작동");
		vo.setNum_information_one(15);
		int cnt = adminService.boardLimit(vo);
		System.out.println(cnt);
		List<RegisterVO> list = adminService.MemberList(vo);
		return list;
	}
	
	@RequestMapping(value="/userManagement")
	public String userManagement() {
		return "admin/MemberManagement/userManagement";
	}
	
	@RequestMapping(value="/adminManagement")
	public String creatorManagement() {
		return "admin/MemberManagement/adminManagement";
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
