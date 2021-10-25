package com.anotherclass.bitcamp.service.user;


import java.util.List;


import com.anotherclass.bitcamp.vo.user.CommunityVO;

public interface UserCommunityService {
	public CommunityVO CommuDetailAllRecord(int community_no);
	public List<CommunityVO> communityAllList(CommunityVO vo);
}
