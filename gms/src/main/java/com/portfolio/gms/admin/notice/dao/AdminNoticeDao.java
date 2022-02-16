package com.portfolio.gms.admin.notice.dao;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;

public interface AdminNoticeDao {

	public List<AdminNoticeDto> noticeList(HashMap<String, Object> hashMap) throws Exception;
	
	public int getAllNoticeCount() throws Exception;
	
}
