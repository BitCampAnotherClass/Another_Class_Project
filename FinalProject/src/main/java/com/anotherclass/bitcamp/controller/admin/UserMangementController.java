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
				
	@RequestMapping(value="/MemberMangement/userAccountList",method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView userList(int number, String searchWord, String searchStartDate, String searchEndDate){
		UserManagementPagingDTO pagingDto = new UserManagementPagingDTO();
		pagingDto.setPageNumber(number);
		if(searchWord != null) {
			pagingDto.setSearchWord(searchWord);
		}
		if(searchStartDate !=null && searchEndDate !=null) {
			pagingDto.setSearchStartDate(searchStartDate);
			pagingDto.setSearchEndDate(searchEndDate);
		}
		ModelAndView mav = userMangement(pagingDto);
		mav.setViewName("admin/MemberManagement/userManagement");
		return mav;
	}
	
	private ModelAndView userMangement(UserManagementPagingDTO pagingDto) {
		int pageNumber = pagingDto.getPageNumber();
		ModelAndView managementMav = new ModelAndView();
		pagingDto.setPageNumber(pageNumber);
		pagingDto = totalListCount(pagingDto);
		List<UserMangementDTO> userAccountList = userManagementService.memberList(pagingDto);
		
		managementMav.addObject("pageBlock", blockDto(pagingDto));
		managementMav.addObject("userlist",userAccountList);
		return managementMav;
	}
	
	private UserManagementPagingDTO totalListCount(UserManagementPagingDTO pagingDto) {
		int pageNumber = pagingDto.getPageNumber();
		int viewLimit = 10;
		int totalListCount = userManagementService.managementListCount(pagingDto);
		int totalListView = (int)Math.ceil(((double)totalListCount/viewLimit));
		int startNumber = (pageNumber-1)*viewLimit; // 페이징용 시작숫자  1일 경우 -1로 0으로 시작함
		int endNumber = (pageNumber*viewLimit); // 페이징용 끝숫자 1일경우 곱하기로 10 
		if(startNumber!= 0) {
			startNumber = startNumber+1;
		}
		pagingDto.setStartNumber(startNumber);
		pagingDto.setEndNumber(endNumber);
		return pagingDto;
	}
	
	private UserManagementPagingDTO blockDto(UserManagementPagingDTO pagingDto) {
		UserManagementPagingDTO boardPagingDto = pagingDto;
		int viewLimit = 10;
		int pageNumber = boardPagingDto.getPageNumber();
		int totalListCount = userManagementService.managementListCount(pagingDto);
		int totalListView = (int)Math.ceil(((double)totalListCount/viewLimit));
		
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
	
	@RequestMapping("/userManagement")
	public ModelAndView memberList(int number) {
		UserManagementPagingDTO pagingDto = new UserManagementPagingDTO();
		pagingDto.setPageNumber(number);
		ModelAndView mav = userMangement(pagingDto);
		mav.setViewName("admin/MemberManagement/userManagement");
		return mav;
	}
}
