package com.anotherclass.bitcamp.service.creator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.creator.MakeClassDAO;
import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassDateTimeVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassVO;
import com.anotherclass.bitcamp.vo.user.ClassListVO;

@Service
public class MakeClassApplyServiceImp implements MakeClassApplyService {
	
	@Inject
	MakeClassDAO makeClassDao;
	@Override
	public int makeClassApply(CreatorMakeClassVO vo) {
		return makeClassDao.makeClassApply(vo);
	}
	@Override
	public List<CreatorClassCategoryVO> makeClassCategoryL() {
		return makeClassDao.makeClassCategoryL();
	}
	@Override
	public List<CreatorClassCategoryVO> makeClassCategoryS(int no) {
		return makeClassDao.makeClassCategoryS(no);
	}
	@Override
	public int makeClassApplyDateTime(CreatorMakeClassDateTimeVO vo) {
		return makeClassDao.makeClassApplyDateTime(vo);
	}
	@Override
	public ClassListVO  creatorChannel(ClassListVO vo) {
		return makeClassDao.creatorChannel(vo);
	}
	@Override
	public int modifyClass(CreatorMakeClassVO vo) {
		return makeClassDao.modifyClass(vo);
	}
	@Override
	public CreatorMakeClassVO modifyClassInfo(CreatorMakeClassVO vo) {
		return makeClassDao.modifyClassInfo(vo);
	}
	

//	@Override
//	public List<CreatorMakeClassVO> modifyClass() {
//		return null;
//	}

}
