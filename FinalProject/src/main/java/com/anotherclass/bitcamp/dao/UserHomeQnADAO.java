package com.anotherclass.bitcamp.dao;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

public interface UserHomeQnADAO {
	
	public List<UserHomeQnAVO> userHomeQnAAllSelect();
	public int userHomeQnAWrite(UserHomeQnAVO vo);
	public UserHomeQnAVO userHomeQnAView(int no);
	public int userHomeQnAEdit(UserHomeQnAVO vo);
	public int userHomeQnADel(int no);
}
