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
		
		ModelAndView mav = new ModelAndView();
		pVo.setTotalRecord(adminHomeQnAService.totalRecordCount(pVo));  
	
    	mav.addObject("pVo",pVo);       
    	List<AdminHomeQnAVO> list = adminHomeQnAService.boardPageSelect(pVo);
    	
    	mav.addObject("list",list);	
		mav.setViewName("admin/HomeQnA/admin_HomeQnA_list");		
		return mav;
		
	}
	
	
	  
		//제목누르면 글보기
		@RequestMapping("/HomeQnA2")
		public ModelAndView CreatorQnAAskView(int no) {		
			ModelAndView mav = new ModelAndView();	
			AdminHomeQnAVO vo = adminHomeQnAService.adminHomeQnAView(no); 
			if(vo.getReplycount()==2) {//답변일때 원래 문의글보기
				String a = adminHomeQnAService.adminHomeQnAView2(no);
				vo.setReplyContent(a);
			}
			mav.addObject("vo",vo);
			mav.setViewName("admin/HomeQnA/admin_HomeQnA_view");
			return mav;
		}
}
