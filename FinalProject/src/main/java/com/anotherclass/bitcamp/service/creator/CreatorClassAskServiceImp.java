package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.creator.CreatorClassAskDAO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskPagingVO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskVO;

@Service
public class CreatorClassAskServiceImp implements CreatorClassAskService {
	@Inject
	CreatorClassAskDAO creatorClassAskdao;


	@Override
	public int totalRecordCount(CreatorCAskPagingVO pVo) {		
		return creatorClassAskdao.totalRecordCount(pVo);
	}
	
	@Override
	public List<CreatorCAskVO> boardPageSelect(CreatorCAskPagingVO pVo) {		
		return creatorClassAskdao.boardPageSelect(pVo);
	}


	
}
