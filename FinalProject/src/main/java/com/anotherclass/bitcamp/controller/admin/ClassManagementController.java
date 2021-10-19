package com.anotherclass.bitcamp.controller.admin;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ClassManagementController {

	

	
	@RequestMapping(value="/basicClassManagement")
	public String basicClassManagement() {
		return "admin/ClassManagement/basicClassManagement";
	}
	
	@RequestMapping(value="/optionClassManagement")
	public String optionClassManagement() {
		return "admin/ClassManagement/optionClassManagement";
	}
	

	
}