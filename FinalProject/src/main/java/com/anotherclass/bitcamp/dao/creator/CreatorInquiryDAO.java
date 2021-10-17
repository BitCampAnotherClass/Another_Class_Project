package com.anotherclass.bitcamp.dao.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;

public interface CreatorInquiryDAO {
	
	public List<CreatorInquiryVO> creatorInquiry();
	
	public int creatorInquiryBoardCount();
	
	public List<CreatorInquiryVO> creatorInquiryPageing(int start, int end);
}
