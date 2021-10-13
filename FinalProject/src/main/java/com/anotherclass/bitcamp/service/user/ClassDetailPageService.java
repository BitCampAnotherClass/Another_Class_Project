package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.userClassDetailVO;

public interface ClassDetailPageService {
	public List<ClassVO> temporarylistAllSelect();//지울것
	public userClassDetailVO userClassDetailAllSelect(int no);
	public List<userClassDetailVO> userSelectOptionAllSelect(String datedate, String no);
}
