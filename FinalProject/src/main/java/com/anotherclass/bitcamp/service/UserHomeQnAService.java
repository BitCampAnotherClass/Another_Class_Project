package com.anotherclass.bitcamp.service;

import java.util.List;

import com.anotherclass.bitcamp.vo.UserHomeQnAVO;

public interface UserHomeQnAService {
	
	public List<UserHomeQnAVO> userHomeQnAAllSelect();
	public int userHomeQnAWrite(UserHomeQnAVO vo);
	public UserHomeQnAVO userHomeQnAView(int no);
	public int userHomeQnAEdit(UserHomeQnAVO vo);
	public int userHomeQnADel(int no);
}
