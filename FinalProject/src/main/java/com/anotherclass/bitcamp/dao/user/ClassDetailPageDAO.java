package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.anotherclass.bitcamp.vo.user.ClassVO;

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;

public interface ClassDetailPageDAO {
	
	public List<ClassVO> temporarylistAllSelect(); //지울것
	public UserClassDetailVO userClassDetailAllSelect(int no);//클래스상세페이지보기
	public List<UserClassDetailVO> userSelectOptionAllSelect(String datedate, int no);//달력날짜선택 -> 옵션별클래스리스트
	
	public UserClassDetailVO classLikeCount(int no);//클래수 좋아요 갯수 구하기
	public int classLikeCheck(int no, String logid);//좋아요 여부 구하기
	public int classLikeInsert(int no, String logid);//좋아요 insert
	public int classLikeDelete(int no,String logid);//좋아요 취소 delete
	
	public List<UserClassDetailVO2> userClassDetailAskAllSelect(int no);//클래스에대한 모든 문의글들 셋팅
	public int AskReplyCheck(int no); //문의번호가지고가서 그 문의글에대한 댓글잇는지 물어보는 다오
	public List<UserClassDetailVO2> userClassDetailAskReplySelect(int no);//문의글번호가지고가서 그 문의글에대한 댓글가져오는 다오
}
