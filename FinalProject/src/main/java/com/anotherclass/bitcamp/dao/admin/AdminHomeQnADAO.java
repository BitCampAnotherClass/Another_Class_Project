package com.anotherclass.bitcamp.dao.admin;

import java.util.List;

import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAPagingVO;
import com.anotherclass.bitcamp.service.vo.admin.AdminHomeQnAVO;



public interface AdminHomeQnADAO {
	 public int totalRecordCount(AdminHomeQnAPagingVO pVo); //총레코드수
	 public List<AdminHomeQnAVO> boardPageSelect(AdminHomeQnAPagingVO pVo);//해당페이지레코드선택
}
