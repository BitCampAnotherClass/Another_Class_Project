package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.ClassVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;

public interface ClassDetailPageService {
	public List<ClassVO> temporarylistAllSelect();//지울것
	public UserClassDetailVO userClassDetailAllSelect(int no);
	public List<UserClassDetailVO> userSelectOptionAllSelect(String datedate, int no);
}
