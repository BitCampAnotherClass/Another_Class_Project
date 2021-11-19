package com.anotherclass.bitcamp.dao.admin;

import java.util.List;

import com.anotherclass.bitcamp.vo.admin.UserManagementPagingDTO;
import com.anotherclass.bitcamp.vo.admin.UserMangementDTO;

public interface UserMangementDAO {

	public int managementListCount(UserManagementPagingDTO dto); // 유저 전체 수
	public List<UserMangementDTO> memberList(UserManagementPagingDTO dto); // 유저목록 출력
	public UserMangementDTO memberInformation(String idCheck); // 유저 상세 정보
}
