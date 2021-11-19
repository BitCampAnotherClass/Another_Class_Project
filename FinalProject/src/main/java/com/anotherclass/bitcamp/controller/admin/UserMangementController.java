package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.admin.UserManagementService;
import com.anotherclass.bitcamp.vo.admin.UserManagementPagingDTO;
import com.anotherclass.bitcamp.vo.admin.UserMangementDTO;

@Controller
@RequestMapping("/admin")
public class UserMangementController {
	
	@Inject
	UserManagementService userManagementService;
				
	@RequestMapping(value="/MemberMangement/userAccountList",method = RequestMethod.POST)
	@ResponseBody
	public List<UserMangementDTO> userList(int number, String searchWord, String dateSearchFirst, String dateSearchLast){
		UserManagementPagingDTO paingDto = userMangement(number,searchWord, dateSearchFirst, dateSearchLast);
		List<UserMangementDTO> userList = userManagementService.memberList(paingDto);
		System.out.println(userList);
		return userList;
	}
	
	private UserManagementPagingDTO userMangement(int pageNumber, String searchWord, String searchStartDate, String searchEndDate) {
		ModelAndView managementMav = new ModelAndView();
		UserManagementPagingDTO userMangement = new UserManagementPagingDTO();
		if(searchWord != null) {
			userMangement.setSearchWord(searchWord);
		}
		if(searchStartDate !=null && searchEndDate !=null) {
			userMangement.setSearchStartDate(searchStartDate);
			userMangement.setSearchEndDate(searchEndDate);
		}
		
		int viewLimit = 10;
		int totalListCount = userManagementService.managementListCount(userMangement);
		int totalListView = (int)Math.ceil(((double)totalListCount/viewLimit));
		int startNumber = (pageNumber-1)*viewLimit; // 페이징용 시작숫자  1일 경우 -1로 0으로 시작함
		int endNumber = (pageNumber*viewLimit); // 페이징용 끝숫자 1일경우 곱하기로 10 
		if(startNumber!= 0) {
			startNumber = startNumber+1;
		}
		userMangement.setStartNumber(startNumber);
		userMangement.setEndNumber(endNumber);
		
		List<UserMangementDTO> userAccountList = userManagementService.memberList(userMangement);
		UserManagementPagingDTO pagingDTO = blockDto(pageNumber,totalListView ,totalListCount);
		managementMav.addObject("pageBlock", pagingDTO);
		managementMav.addObject("userlist",userAccountList);
		return userMangement;
	}
	
	private UserManagementPagingDTO blockDto(int pageNumber, int totalListView ,int totalListCount) {
		UserManagementPagingDTO boardPagingDto = new UserManagementPagingDTO();
		int blockSize = 10;
		int block =(int)Math.ceil((pageNumber*1.0)/blockSize);
		int blockStart = ((block-1)*blockSize+1);
		int blockEnd = (blockStart + blockSize)-1;
		int blockPrev = ((block* blockSize)-blockSize);
		int blockNext = ((block*blockSize)+1);
		int blockMax =(int)Math.ceil((totalListView*1.0)/blockSize);
		if(blockEnd > totalListView) blockEnd = totalListView; // 블럭 갯수 제한
		if(blockPrev < 1) blockPrev = 1; // 블럭 이전버튼 제한 
		if(blockNext > totalListView) blockNext = totalListView; // 블럭 다음버튼 제한
		boardPagingDto.setBlock(block);
		boardPagingDto.setBlockStartNumber(blockStart);
		boardPagingDto.setBlockEndNumber(blockEnd);
		boardPagingDto.setPrevButton(blockPrev);
		boardPagingDto.setNextButton(blockNext);
		boardPagingDto.setBlockMax(blockMax);
		return boardPagingDto;
	}
	
	@RequestMapping(value="/MemberMangement/AccountInformation", method= RequestMethod.POST)
	@ResponseBody
	public UserMangementDTO memberAccountInfo(String idData){
		return userManagementService.memberAccountInfo(idData);
	}
	
	@RequestMapping(value="/userManagement")
	public String userManagement() {
		return "admin/MemberManagement/userManagement";
	}
}
