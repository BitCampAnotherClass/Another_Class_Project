package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

public interface UserMyPageDAO {
	public List<UserHomeQnAVO> myPageHomePageAsk(String logid);//홈페이지문의페이지 -> 로그인한 회원이 작성한 홈페이지문의가져오는
	public String myPageHpmePageAskReply(int no);//홈페이지답글가져옴
	public List<UserClassDetailVO2> myPageClassAskAll(String logid);//클래스문의페이지 -> 로그인한 회원이 작성한 클래스문의글가져오는
	public int classAskRepltCheck(int no);//클래스문의글에댓글이있는지없는지
	public UserClassDetailVO2 Replycreatorinfo(int no);//클래스문의글번호 넣어서 ->문의글에 해당하는댓글가져오는+강사정보
	
	public List<UserClassDetailVO> Likedcreator(String logid);//회원이좋아요한 강사목록가져옴
	public int LikedcreatorCount(String logid);//강사-좋아요당한개수
	public int OpenClassCount(String logid);//강사-개설한클래스개수
	public int CancelLikeCreator(int no);//강사좋아요취소
}
