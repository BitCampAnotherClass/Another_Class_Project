package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anotherclass.bitcamp.service.user.UserClassService;
import com.anotherclass.bitcamp.vo.user.ClassVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserClassController {
	
	@Inject
	UserClassService userClassService;

	
	@RequestMapping(value = "/classMap")
	public String classMap() {
		return "user/class/class_map";
	}
	
	@RequestMapping(value = "/classList")
	public String classList() {
		return "user/class/class_list";
	}

	
	// 지도 클래스 목록 가져오기
	@RequestMapping(value = "/classMap/list", method = RequestMethod.GET)
	@ResponseBody
	public List<ClassVO> classMapList() {
		System.out.println("컨트롤러 실행");
		List<ClassVO> classMapList = userClassService.selectClassMapList();

    	return classMapList;
	}
	
//	public List<ClassVO> classList(){
//		
//	}

	
}