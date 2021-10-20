package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;
import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;

public interface CreatorService {
	
	public List<CreatorInquiryVO> creatorInquiry();
	
	public int creatorInquiryBoardCount();
	
	public List<UserHomeQnAVO> creatorInquiryPageing(int start, int end);
}
