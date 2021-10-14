package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.anotherclass.bitcamp.vo.user.ClassVO;

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;

public interface ClassDetailPageDAO {
	public List<ClassVO> temporarylistAllSelect(); //지울것
	public UserClassDetailVO userClassDetailAllSelect(int no);//클래스상세페이지보기
	public List<UserClassDetailVO> userSelectOptionAllSelect(String datedate, int no);//달력날짜선택 -> 옵션별클래스리스트
	public UserClassDetailVO classLikeCount(int no);//클래수 좋아요 갯수 구하기
	public int classLikeCheck(int no, String logid);//좋아요 여부 구하기
}
