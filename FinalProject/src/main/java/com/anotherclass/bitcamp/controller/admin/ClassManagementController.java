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