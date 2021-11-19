package com.anotherclass.bitcamp.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.admin.UserMangementDAO;
import com.anotherclass.bitcamp.vo.admin.UserManagementPagingDTO;
import com.anotherclass.bitcamp.vo.admin.UserMangementDTO;

@Service
public class UserManagementServiceImp implements UserManagementService {
	
	@Inject
	UserMangementDAO userMangementDAO;
	
	@Override
	public int managementListCount(UserManagementPagingDTO pagingDto){
		return userMangementDAO.managementListCount(pagingDto);
	}

	@Override
	public List<UserMangementDTO> memberList(UserManagementPagingDTO listDto) {
		return userMangementDAO.memberList(listDto);
	}

	@Override
	public UserMangementDTO memberAccountInfo(String userId) {
		return userMangementDAO.memberInformation(userId);
	}

}
