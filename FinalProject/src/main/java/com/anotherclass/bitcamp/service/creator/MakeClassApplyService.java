package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassDateTimeVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassVO;

public interface MakeClassApplyService {
	public int makeClassApply(CreatorMakeClassVO vo);
	//public List<CreatorMakeClassVO> modifyClass();
	public List<CreatorClassCategoryVO> makeClassCategoryL();
	public List<CreatorClassCategoryVO> makeClassCategoryS(int no);
	public int makeClassApplyDateTime(CreatorMakeClassDateTimeVO vo);
}
