package com.portfolio.gms.admin.notice.dao;

import java.util.List;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;

public interface AdminNoticeDao {

	public List<AdminNoticeDto> noticeList() throws Exception;
	
	public int getAllNoticeCount() throws Exception;
	
}
