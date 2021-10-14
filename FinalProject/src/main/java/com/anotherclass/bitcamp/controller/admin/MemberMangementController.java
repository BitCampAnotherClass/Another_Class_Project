package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;

@Controller
@RequestMapping("/admin")
public class MemberMangementController {
	
	@Inject
	AdminService adminService;
	
	@RequestMapping("/MemberMangement/userAccountList")
	@ResponseBody
	public List<RegisterVO> userList(RegisterVO vo){
		System.out.println("LIST 컨트롤러 작동");
		List<RegisterVO> list = adminService.MemberList(vo);
		return list;
	}
}
