package com.anotherclass.bitcamp.service.user;

import java.util.List;

import com.anotherclass.bitcamp.register.RegisterVO;
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
	public List<UserClassDetailVO> BaskList(String logid);
	public int getBasketNum(String logid);
	public String getCreatorNick(int no); 
	public RegisterVO MemberInfo(String logid); // 회원정보
	public int MemberInfoEdit(RegisterVO vo); //회원정보수정
}
