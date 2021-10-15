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

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;

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
	@RequestMapping("/classDetailLikeFun")
	@ResponseBody
	public int ajaxLikeFunc(int no,HttpSession  sess) {
		
		System.out.println("좋아요버튼클릭컨트롤러들어옴");
		String logid= (String)sess.getAttribute("userId");
		int result;
		System.out.println(no);
		System.out.println(logid);
		int likecheck = classDetailPageService.classLikeCheck(no,logid); //좋아요여부 -> 좋아요눌렀음 :1 , 좋아요안눌렀음:0
		System.out.println(likecheck);
		
		if(likecheck == 0) {//좋아요 안눌럿음 -> 좋아요 테이블에 insert
			result = classDetailPageService.classLikeInsert(no,logid); //1가 같거나 1보다 크면 인서트
			
		}else {//좋아요 눌럿음 -> 좋아요 테이블에 delete
			result = classDetailPageService.classLikeDelete(no,logid);//1가 같거나 1보다 크면 인서트
		}	
		
		return result;
	}
	
	@RequestMapping("/classDetailAskList")
	@ResponseBody
	public List<UserClassDetailVO2> ajaxAskList(int no) {//클래스번호가 가지고 들어온다
		System.out.println("문의리스트컨트롤러들어옴");
		List<UserClassDetailVO2> list = classDetailPageService.userClassDetailAskAllSelect(no); //클래스번호 넣어서 그 클래스번호의 문의글들 list에 넣음		
			for (int i=0; i<list.size(); i++) {
				UserClassDetailVO2 vo2 = list.get(i);
				
				int replyChek = classDetailPageService.AskReplyCheck(vo2.getClass_qna_no());//문의번호를 댓글테이블에 넣어서 문의번호에 대한 댓글들이 있는지 확인
					if(replyChek==0) {
						vo2.setReplycheck(0);
					}else {
						vo2.setReplycheck(1);
					}
			}		
		return list;			
	}
	
	@RequestMapping("/classDetailAskReplyList")
	@ResponseBody
	public List<UserClassDetailVO2> ajaxAskReply(int no){
		System.out.println("댓글리스트컨트롤러들어옴");
		List<UserClassDetailVO2> list = classDetailPageService.userClassDetailAskReplySelect(no); //문의글에대한 댓글리스트 담아옴
		return list;
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
