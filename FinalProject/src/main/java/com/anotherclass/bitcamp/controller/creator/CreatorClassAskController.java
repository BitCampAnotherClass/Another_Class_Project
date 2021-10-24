package com.anotherclass.bitcamp.controller.creator;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.CreatorClassAskService;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskPagingVO;

@Controller
public class CreatorClassAskController {
	
	@Inject
	CreatorClassAskService creatorClassAskService;
	 
	
	//게시글 리스트
    @RequestMapping("creator/classAskManage")
    public ModelAndView boardList(CreatorCAskPagingVO pVo) {
    	System.out.println("클래스문의컨트롤러들어옴");
    	ModelAndView mav = new ModelAndView();
    	//총레코드수
    	pVo.setTotalRecord(creatorClassAskService.totalRecordCount(pVo));
    	mav.addObject("pVo",pVo);   
    	mav.addObject("list",creatorClassAskService.boardPageSelect(pVo));
    	mav.setViewName("creator/classAsk/classAsk_list");
    	return mav;      
   }
}
