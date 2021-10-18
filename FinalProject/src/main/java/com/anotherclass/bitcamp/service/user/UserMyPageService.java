package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.vo.user.UserClassDetailVO;
import com.anotherclass.bitcamp.vo.user.UserClassDetailVO2;
import com.anotherclass.bitcamp.vo.user.UserHomeQnAVO;

public interface UserMyPageService {
	public List<UserHomeQnAVO> myPageHomePageAsk(String logid);
	public String myPageHpmePageAskReply(int no);
	public List<UserClassDetailVO2> myPageClassAskAll(String logid);
	public int classAskRepltCheck(int no);
	public UserClassDetailVO2 Replycreatorinfo(int no);
	public List<UserClassDetailVO> Likedcreator(String logid);
	public int LikedcreatorCount(String logid);
	public int OpenClassCount(String logid);
	public int CancelLikeCreator(int no);
}
