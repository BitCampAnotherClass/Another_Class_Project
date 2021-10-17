package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;

public interface CreatorService {
	
	public List<CreatorInquiryVO> creatorInquiry();
	
	public int creatorInquiryBoardCount();
	
	public List<CreatorInquiryVO> creatorInquiryPageing(int start, int end);
}
