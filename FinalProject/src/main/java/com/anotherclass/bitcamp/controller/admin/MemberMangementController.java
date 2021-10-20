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
		int memberListLimit = 10; // 한페이지에 보여줄 페이지수
		int num =no;
		int numberList = ((num-1)*memberListLimit); // 페이징 시작 계산식
		int numberLimitCal = (memberListLimit*num);
		int numberListLast = (numberList+1);
		List<RegisterVO> list = adminService.MemberList(numberListLast, numberLimitCal);
		return list;
	}
	
	@RequestMapping(value="/MemberMangement/btnList", method = RequestMethod.POST)
	@ResponseBody
	public int buttonList() {
		int boardListNumber = adminService.boardLimit(); // 게시글 수 조회
		int memberListLimit = 10; // 한페이지에 보여줄 페이지수
		int listCalcul = (int) Math.ceil((double)boardListNumber/memberListLimit);		
		return listCalcul;
	}
	
	@RequestMapping(value="/MemberMangement/AccountInformation", method= RequestMethod.POST)
	@ResponseBody
	public List<RegisterVO> memberAccountInfo(String idData){
		List<RegisterVO> list = adminService.MemberAccountInfo(idData);
		return list;
	}
	
	@RequestMapping(value="/userManagement")
	public String userManagement() {
		return "admin/MemberManagement/userManagement";
	}
	
	
	@RequestMapping(value="/adminTest")
	public String adminTest() {
		return "admin/adminTest";
	}
	
	@RequestMapping(value="/adminAccountMake", method = RequestMethod.POST)
	public ModelAndView adminAccountMake(RegisterVO vo)throws Exception {
		ModelAndView mav = new ModelAndView();
		vo.setMember_pw(hashing.setEncryption(vo.getMember_pw(),vo.getMember_id()));
		vo.setAdditional_information_one("admin1");
		String s = adminService.adminAccountCreate(vo);
		String check =vo.getAdditional_information_two();
		System.out.println(check);
		System.out.println("테스트"+s);
		if(check=="NOT") {
			mav.setViewName("redirect:/");
		}else {
			
		}
		
		mav.setViewName("redirect:/");
		return mav;
	}
}
