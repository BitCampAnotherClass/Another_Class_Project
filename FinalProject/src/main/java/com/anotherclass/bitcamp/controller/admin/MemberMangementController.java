package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.register.HashingSeting;
import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.admin.AdminService;
import com.anotherclass.bitcamp.service.vo.admin.MemberMangementVO;

@Controller
@RequestMapping("/admin")
public class MemberMangementController {
	
	@Inject
	AdminService adminService;
	
	private HashingSeting hashing = new HashingSeting();
	
	@RequestMapping(value="/MemberMangement/userAccountList",method = RequestMethod.POST)
	@ResponseBody
	public List<MemberMangementVO> userList(int number, String searchWord, String dateSearchFirst, String dateSearchLast){
		MemberMangementVO vo = new MemberMangementVO();
		System.out.println(dateSearchFirst);
		if(searchWord != null) {
			vo.setSearchWord(searchWord);
		}
		if(dateSearchFirst != null && dateSearchLast != null) {
			vo.setDateSearchFirst(dateSearchFirst);
			vo.setDateSearchLast(dateSearchLast);
		}
		vo.setPageNumber(number);
		int memberListLimit = 10; // 한페이지에 보여줄 페이지수
		int numberList = ((vo.getPageNumber()-1)*memberListLimit); // 페이징 시작 계산식
		
		int pageStartNumber = (numberList+1);
		int pageEndNumber = (memberListLimit*vo.getPageNumber());
		
		vo.setPageStartNumber(pageStartNumber);
		vo.setPageEndNumber(pageEndNumber);
		
		List<MemberMangementVO> list = adminService.MemberList(vo);
		System.out.println(list);
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
	public List<MemberMangementVO> memberAccountInfo(String idData){
		List<MemberMangementVO> list = adminService.MemberAccountInfo(idData);
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
