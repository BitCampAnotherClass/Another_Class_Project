package com.anotherclass.bitcamp.controller.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.CreatorClassAskService;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskPagingVO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskVO;

@Controller
public class CreatorClassAskController {
	
	@Inject
	CreatorClassAskService creatorClassAskService;
	 
	
	//게시글 리스트
    @RequestMapping("creator/classAskManage")
    public ModelAndView boardList(CreatorCAskPagingVO pVo) {
    	System.out.println("클래스문의컨트롤러들어옴");
    	ModelAndView mav = new ModelAndView();
    	System.out.println(pVo.getSearchWord());
    	//총레코드수
    	pVo.setTotalRecord(creatorClassAskService.totalRecordCount(pVo)); //널값....
    	  System.out.println(pVo.getTotalRecord()); //15개
    	mav.addObject("pVo",pVo);   
    	mav.addObject("list",creatorClassAskService.boardPageSelect(pVo));
    	List<CreatorCAskVO> list = creatorClassAskService.boardPageSelect(pVo);
    	 System.out.println(list.size());
    	mav.setViewName("creator/classAsk/creator_ClassQna_list");
    	return mav;      
   }
}
