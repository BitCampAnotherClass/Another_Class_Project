package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;

@Controller
@RequestMapping("/MemberMangement")
public class MemberMangementController {
	
	@Inject
	AdminService adminService;
	
	@RequestMapping("/AccountUserList")
	public List<RegisterVO> userList(RegisterVO vo){
		List<RegisterVO> list = adminService.MemberList(vo);
		return list;
	}
}
