package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anotherclass.bitcamp.service.admin.AdminService;
import com.anotherclass.bitcamp.service.vo.admin.MemberMangementVO;

@Controller
@RequestMapping("/testing")
public class AccountMangementController {
	
	@Inject
	AdminService adminService;
	
	@RequestMapping(value="/list/Testing",method = RequestMethod.GET)
	public List<MemberMangementVO> listTest(int number, String searchWord, String dateSearchFirst, String dateSearchLast){
		MemberMangementVO vo = new MemberMangementVO();
		if(searchWord != null) {
			vo.setSearchWord(searchWord);
		}
		if(dateSearchFirst != null && dateSearchLast != null) {
			vo.setDateSearchFirst(dateSearchFirst);
			vo.setDateSearchLast(dateSearchLast);
		}
		vo.setPageNumber(number);
		int DataListCount = adminService.ListCount(vo);
		int ListLimit = 10;
		int listSys = (int) Math.ceil((double)DataListCount/ListLimit);
		System.out.println(listSys);
		
		
		List<MemberMangementVO> list =null;
		return list;
	}
	
}
