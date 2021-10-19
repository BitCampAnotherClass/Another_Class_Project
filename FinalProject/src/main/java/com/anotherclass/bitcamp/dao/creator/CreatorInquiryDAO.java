package com.anotherclass.bitcamp.dao.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

public interface CreatorInquiryDAO {
	
	public List<CreatorInquiryVO> creatorInquiry();
	
	public int creatorInquiryBoardCount();
	
	public List<UserHomeQnAVO> creatorInquiryPageing(int start, int end);
}
