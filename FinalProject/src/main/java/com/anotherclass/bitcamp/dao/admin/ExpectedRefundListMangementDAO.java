package com.anotherclass.bitcamp.dao.admin;

import java.util.List;

import com.anotherclass.bitcamp.service.vo.admin.ExpectedRefundListMangementVO;

public interface ExpectedRefundListMangementDAO {
	
	public List<ExpectedRefundListMangementVO> refundList(ExpectedRefundListMangementVO vo);
	public ExpectedRefundListMangementVO refundInfo(String idCheck);
	public int boardLimit();
}
