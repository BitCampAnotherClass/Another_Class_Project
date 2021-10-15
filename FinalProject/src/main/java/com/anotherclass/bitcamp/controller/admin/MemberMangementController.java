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
	
	@RequestMapping(value="/MemberMangement/userAccountList",method = RequestMethod.POST)
	@ResponseBody
	public List<RegisterVO> userList(int no){
		int boardListNumber = adminService.boardLimit(); // 게시글 수 조회
		int memberListLimit = 15; // 한페이지에 보여줄 페이지수
		int num =no;
		int numberList = ((num-1)*memberListLimit); // 페이징 시작 계산식
		int numberLimitCal = (memberListLimit*num);
		List<RegisterVO> list = adminService.MemberList(numberList, numberLimitCal);
		return list;
	}
	
	@RequestMapping(value="/MemberMangement/test")
	public String test() {
		int boardListNumber = adminService.boardLimit(); // 게시글 수 조회
		int memberListLimit = 15; // 한페이지에 보여줄 페이지수
		int listCalcul = (int) Math.ceil((double)boardListNumber/memberListLimit);
		// 하단 버튼
		int num =2;
		int numberList = ((num-1)*memberListLimit); // 페이징 시작 계산식
		int numberLimitCal = (memberListLimit*num);
		System.out.println(numberList+"||"+numberLimitCal);
		
		return "admin/MemberManagement/userManagement";
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
