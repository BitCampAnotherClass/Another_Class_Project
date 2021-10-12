package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

public interface UserHomeQnAService {
	
	public List<UserHomeQnAVO> userHomeQnAAllSelect();
	public int userHomeQnAWrite(UserHomeQnAVO vo);
	public UserHomeQnAVO userHomeQnAView(int no);
	public int userHomeQnAEdit(UserHomeQnAVO vo);
	public int userHomeQnADel(int no);
}
