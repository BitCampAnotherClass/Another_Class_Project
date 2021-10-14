package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.ClassDetailPageService;
import com.anotherclass.bitcamp.vo.user.tempMemberVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;

@Controller
public class ClassDetailPageController {
	@Inject
	ClassDetailPageService classDetailPageService;

	//클래스리스트--> 기민님이구현
	@RequestMapping("/user/classDetailPage/temporaryclasslist")
	public ModelAndView temporaryclasslist() { //가짜클래스목록
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",classDetailPageService.temporarylistAllSelect());
		mav.setViewName("user/classDetailPage/temporaryclasslist");
		return mav;		
	}
	
	//클래스상세페이지로이동
	@RequestMapping("/classDetailView")
	public ModelAndView classMainPage(int no) {//클래스 리스트에서 클래스명누르면 클레스상세페이지로이동
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",classDetailPageService.userClassDetailAllSelect(no));
		mav.setViewName("/user/classDetailPage/classMain2");
		return mav;
	}
	
	
	
	//달력에서 날짜선택 -> 클래스옵션리스트
	@RequestMapping("/classDetailDatePick")  //  /teamproject/classDetailDatePick
	@ResponseBody		
	public List<UserClassDetailVO> ajaxDatePick(String datedate, int no){
	
		System.out.println("컨트롤러 들어옴"+datedate+no);
		List<UserClassDetailVO> list = classDetailPageService.userSelectOptionAllSelect(datedate,no);
		System.out.print(list.size());
		return list;
	}
	
	//클래스를 좋아요한 목록중에서 세션에 저장된 로그인 아이디가 있는 경우
	@RequestMapping("/classDetailLikeCount")
	@ResponseBody
	public UserClassDetailVO ajaxLikeChechk(int no, HttpSession  ses){
		System.out.println("좋아요수컨트롤러들어옴");
		UserClassDetailVO vo2= classDetailPageService.classLikeCount(no); //좋아요수 구함
		 //List<UserClassDetailVO> list = classDetailPageDAO.userSelectOptionAllSelect(datedate,no);		  
		// UserClassDetailVO vo2 = list.get(0);
		// System.out.println(vo2.getStart_date());
		
		String logid= (String)ses.getAttribute("userId");
		if(logid == null) {//|| logid.length() == 0 //로그인x
			vo2.setClass_like_check(0);
		}else {//로그인
			
			int likecheck = classDetailPageService.classLikeCheck(no,logid);
			
			if(likecheck == 0) {
				vo2.setClass_like_check(0); //좋아요x
			}else {
				vo2.setClass_like_check(1);//좋아요ㅇ
			}
			
		}
		
		return vo2;
	}
	
	
	
	
	
//	@RequestMapping("/user/templogin")
//	public String loginForm() {
//		return "/user/classDetailPage/temploginForm" ;
//	}
//	//-------------로그인
//	@RequestMapping(value="/temploginOk", method=RequestMethod.POST)
//	   public String loginOk(tempMemberVO vo, HttpSession ses) {
//	      //로그인
//
//	         ses.setAttribute("logid", "goguma123");
//	        
//	     
//	      return "user/classDetailPage/temporaryhome";
//	   }
////	   @RequestMapping("/logout")
////	   public String logout(HttpSession s) {
////	      s.invalidate();
////	      return "user/classDetailPage/temporaryhome";
////	   }
//	
}
