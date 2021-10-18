package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.creator.CreatorInquiryDAO;
import com.anotherclass.bitcamp.vo.creator.CreatorInquiryVO;

@Service
public class CreatorServiceImp implements CreatorService{
	
	@Inject
	CreatorInquiryDAO creatorInquiryDao;
	
	@Override
	public List<CreatorInquiryVO> creatorInquiry(){
		return creatorInquiryDao.creatorInquiry();
	}
	
	@Override
	public int creatorInquiryBoardCount() {
		return creatorInquiryDao.creatorInquiryBoardCount();
	}
	
	@Override
	public List<CreatorInquiryVO> creatorInquiryPageing(int start, int end) {
		return creatorInquiryDao.creatorInquiryPageing(start, end);
	}
	
}
