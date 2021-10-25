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
    	
    	ModelAndView mav = new ModelAndView();
    	
    	//총레코드수
    	pVo.setTotalRecord(creatorClassAskService.totalRecordCount(pVo)); 
    	
    	mav.addObject("pVo",pVo);   
    	
    	List<CreatorCAskVO> list = creatorClassAskService.boardPageSelect(pVo);
    	for(int i=0; i<list.size(); i++) {
    		CreatorCAskVO vo = list.get(i);
    		int a = creatorClassAskService.CAReplyCheck(vo.getClass_qna_no());
    		vo.setReplycheck(a);
    	}    	
    	mav.addObject("list",list);
    	
    	
    	mav.setViewName("creator/classAsk/creator_ClassQna_list");
    	return mav;      
   }
    
    
	//제목누르면 글보기
	@RequestMapping("creator/classAskManage2")
	public ModelAndView HomeQnAAskView(int no) {
		System.out.println("제목눌름 컨트롤러들어옴"+no);
		ModelAndView mav = new ModelAndView();
		System.out.println(creatorClassAskService.CAContent(no));
		mav.addObject("vo",creatorClassAskService.CAContent(no));
		mav.setViewName("creator/classAsk/creator_ClassQna_view");
		return mav;
	}
	
}
