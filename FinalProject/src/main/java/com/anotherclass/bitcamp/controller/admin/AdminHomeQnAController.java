package com.anotherclass.bitcamp.controller.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.admin.AdminHomeQnAService;
import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAPagingVO;
import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAVO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskPagingVO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskVO;



@Controller
@RequestMapping("/admin")
public class AdminHomeQnAController {
	
	@Inject
	AdminHomeQnAService adminHomeQnAService;
	
	@RequestMapping(value="/HomeQnA")
	public ModelAndView AdminHomeQnA(AdminHomeQnAPagingVO pVo) {
		System.out.println(pVo.getSearchKey());
		System.out.println(pVo.getSearchWord());
		ModelAndView mav = new ModelAndView();
		pVo.setTotalRecord(adminHomeQnAService.totalRecordCount(pVo));  
		System.out.println(pVo.getTotalRecord());
    	mav.addObject("pVo",pVo);       
    	List<AdminHomeQnAVO> list = adminHomeQnAService.boardPageSelect(pVo);
    	///////////////////////////////////////
    	System.out.println(list.size());
    	//////////////////////////////////
    	for(int i=0; i<list.size(); i++) {
    		AdminHomeQnAVO vo = list.get(i);
    		System.out.println(vo.getUser_qna_no());
    	}    
    	/////////////////////////////////////////////
    	mav.addObject("list",list);	
		mav.setViewName("admin/HomeQnA/admin_HomeQnA_list");		
		return mav;
		
	}
	
	
	  
		//제목누르면 글보기
		@RequestMapping("/HomeQnA2")
		public ModelAndView CreatorQnAAskView(int no) {		
			ModelAndView mav = new ModelAndView();			
//			AdminHomeQnAVO vo = creatorClassAskService.CAContent(no);
//			int a = creatorClassAskService.CAReplyCheck(no);		
//			vo.setReplycheck(a);		
//			mav.addObject("vo",vo);
			mav.setViewName("admin/HomeQnA/admin_HomeQnA_view");
			return mav;
		}
}
