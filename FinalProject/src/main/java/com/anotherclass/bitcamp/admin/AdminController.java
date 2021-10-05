package com.anotherclass.bitcamp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin")
	public String creator() {
		return "admin/admin";
	}
}
