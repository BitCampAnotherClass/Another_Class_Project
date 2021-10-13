package com.anotherclass.bitcamp.dao.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.ClassVO;

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;

public interface ClassDetailPageDAO {
	public List<ClassVO> temporarylistAllSelect(); //지울것
	public UserClassDetailVO userClassDetailAllSelect(int no);//클래스상세페이지보기
	public List<UserClassDetailVO> userSelectOptionAllSelect(String datedate, int no);//달력날짜선택 -> 옵션별클래스리스트
}
