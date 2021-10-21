package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anotherclass.bitcamp.service.user.UserMyPageService;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

@Controller
public class UserMyPageController {
	@Inject
	UserMyPageService userMyPageService;
	
	
	@RequestMapping(value = "/mypage/mypage1")//주문내역
	public String mypage() {
		return "/user/mypage/myPage_order";
	}
	@RequestMapping(value = "/mypage/mypage2")//장바구니
	public String mypage2() {
		return "/user/mypage/myPage_shoppingbasket";
	}
	@RequestMapping(value = "/mypage/mypage3")//문의
	public String mypage3() {
		return "/user/mypage/myPage_Ask";
	}	
	@RequestMapping(value = "/mypage/mypage4") //좋아요목록
	public String mypage4() {
		return "/user/mypage/myPage_Creatorlike";
	}	
	@RequestMapping(value = "/mypage/mypage5") //좋아요목록
	public String mypage5() {
		return "/user/mypage/myPage_Classlike";
	}	
	@RequestMapping(value = "/mypage/mypage6") //나의게시물
	public String mypage6() {
		return "/user/mypage/myPage_post";
	}	
	
	//	///HomeAskReplyList999 홈페이지문의 에이젝스로불러오기
	@RequestMapping("/HomeAskReplyList999")
	@ResponseBody
	public List<UserHomeQnAVO> ajaxHomeAskList2(String logid){			
		List<UserHomeQnAVO> list = userMyPageService.myPageHomePageAsk(logid);			
			for(int i=0; i<list.size(); i++) {//답변이있으면 답변내용 저장해줌 -> replyContent
				UserHomeQnAVO vo = list.get(i);				
				int replycheck = vo.getReplycount();//1이면 미답변 2이면 답변달림				
				String replyContent =String.valueOf(userMyPageService.myPageHpmePageAskReply(vo.getUser_qna_no()));
				if(replycheck==2) {
					vo.setReplyContent(replyContent);
				}				
			}		
		return list;
	}
	//클래스문의
	@RequestMapping("/ClassAskReplyList999")
	@ResponseBody
	public List<UserClassDetailVO2> ajaxClassAskList2(String logid){
		System.out.println("클래스문의 컨트롤러들어옴");
		List<UserClassDetailVO2> list = userMyPageService.myPageClassAskAll(logid); //회원이 문의한 클래스문의글정보 다 가져옴
		System.out.println("클래스문의 리스트겟");
		//가져온문의글번호를 댓글테이블에 넣어서 댓글이있는지 여부확인 -> 있으면 댓글정보가져와서 저장
		for(int i=0; i<list.size(); i++) {
			UserClassDetailVO2 vo2 = list.get(i); // ->꺼내온한줄
	
			int replyChek = userMyPageService.classAskRepltCheck(vo2.getClass_qna_no());//문의번호를 댓글테이블에 넣어서 문의번호에 대한 댓글들이 있는지 확인
				if(replyChek==0) {
					vo2.setReplycheck(0);//댓글없음
				}else {					
					UserClassDetailVO2 vo3 = userMyPageService.Replycreatorinfo(vo2.getClass_qna_no());					
					vo2.setReplycheck(1);//댓글있음
					vo2.setCreator_img(vo3.getMember_img()); //강사이미지
					//System.out.println(vo2.creator_img);
					vo2.setCreator_nick(vo3.getNick());//강사닉네임
					//System.out.println(vo2.creator_nick);
					vo2.setCreator_reply(vo3.getClassqnacom_reply());//댓글내용
					//System.out.println(vo2.creator_reply);
					vo2.setClassqnacom_writedate(vo3.getClassqnacom_writedate());//댓글작성일
					vo2.setClass_qna_com_no(vo3.getClass_qna_com_no());//댓글번호
					//System.out.println(vo2.getClass_qna_com_no());
					//vo2.setClassqnacom_member_id(vo3.getClassqnacom_member_id());//댓글작성자				
					}
		}	
		return list;
	}
	//강사좋아요목록
	@RequestMapping("/LikedListCrea")
	@ResponseBody
	public List<UserClassDetailVO> ajaxLikedCreatorList(String logid){
		System.out.println("강사좋아요컨트롤러들어옴");
		List<UserClassDetailVO> list = userMyPageService.Likedcreator(logid);//좋아요번호,강사아이디,강사닉네임,강사프사
		System.out.println("강사좋요아리스트겟");
		for(int i=0; i<list.size(); i++) {
			UserClassDetailVO vo = list.get(i);
			System.out.println(vo.getCreator_id());
			//강사좋아요수 셋팅
			int creatorlikecount = userMyPageService.LikedcreatorCount(vo.getCreator_id());
			vo.setCreatorlikecount(creatorlikecount);
			System.out.println(creatorlikecount);
			//강사 개설강의수 셋팅
			int creatorclasscount = userMyPageService.OpenClassCount(vo.getCreator_id());
			vo.setCreatorclasscount(creatorclasscount);
			System.out.println(creatorclasscount);
		}
		return list;
	}
	//강사좋아요취소
	@RequestMapping("/cancelLikedListCrea")
	@ResponseBody
	public int ajaxCancelCreatorLike(int no) {
		System.out.println("강사좋아요취소컨트롤러들어옴");
		int result= userMyPageService.CancelLikeCreator(no);
		System.out.println("강사좋아요취소"+result);
		return result;
	}
	
	//장바구니목록 ajax
	@RequestMapping("/ShoppingBasket")
	@ResponseBody
	public List<UserClassDetailVO> ajaxgetBasketList(String logid){
		System.out.println("컨트롤러들어옴");
		List<UserClassDetailVO> list = userMyPageService.BaskList(logid);//1차 : 장바구니테이블에서 아이디에해당하는정보담아옹ㄴ다 
		for(int i=0; i<list.size(); i++) {
			UserClassDetailVO vo = list.get(i);
			String creatorNick = userMyPageService.getCreatorNick(vo.getClass_no());//클래스번호가지고 강사명구함
			vo.setCreator_nick2(creatorNick);//구한강사명을 넣어줌
			System.out.println(creatorNick);
		}
		return list;
	}
	//장바구니상품갯수
	@RequestMapping("/BasketCount")
	@ResponseBody
	public int ajaxgetBasketCoung(String logid) {
		int basketCount = userMyPageService. getBasketNum(logid);
		return basketCount;
	}
	
}
