package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.creator.CreatorCAskPagingVO;
import com.anotherclass.bitcamp.vo.creator.CreatorCAskVO;

public interface CreatorClassAskService {
	 public int totalRecordCount(CreatorCAskPagingVO pVo); //총레코드수
	 public List<CreatorCAskVO> boardPageSelect(CreatorCAskPagingVO pVo);//해당페이지레코드선택

}
