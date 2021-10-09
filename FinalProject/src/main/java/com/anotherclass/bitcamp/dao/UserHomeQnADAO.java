package com.anotherclass.bitcamp.dao;

import java.util.List;

import com.anotherclass.bitcamp.vo.UserHomeQnAVO;

public interface UserHomeQnADAO {
	
	public List<UserHomeQnAVO> userHomeQnAAllSelect();
	public UserHomeQnAVO userHomeQnAView(int no);
	public int userHomeQnAEdit(UserHomeQnAVO vo);
	
}
