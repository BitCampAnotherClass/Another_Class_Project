package com.anotherclass.bitcamp.controller.admin;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;
import com.anotherclass.bitcamp.service.admin.basicClassManagementService;
import com.anotherclass.bitcamp.service.vo.admin.BasicClassVO;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

@Controller
@RequestMapping("/admin")
public class ClassManagementController {

	@Inject
	basicClassManagementService basicclassManagementService;



	
	@RequestMapping(value="/basicClassManagement")
	public ModelAndView basicClassManagement() {
		ModelAndView mav = new ModelAndView();
		List<BasicClassVO> list = basicclassManagementService.basicClassAllRecord();
		mav.addObject("list",list);
		mav.setViewName("admin/ClassManagement/basicClassManagement");		
		return mav;
		
	}
	
	@RequestMapping(value="/optionClassManagement")
	public String optionClassManagement() {
		return "admin/ClassManagement/optionClassManagement";
	}
	

	
}