package com.anotherclass.bitcamp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/")
	public String admin() {
		return "admin/admin";
	}
	
	@RequestMapping(value="/userManagement")
	public String UserManagement() {
		return "admin/MemberManagement/userManagement";
	}
	
	@RequestMapping(value="/creatorManagement")
	public String CreatorManagement() {
		return "admin/MemberManagement/creatorManagement";
	}
}
