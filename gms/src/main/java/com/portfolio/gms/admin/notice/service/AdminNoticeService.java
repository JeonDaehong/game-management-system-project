package com.portfolio.gms.admin.notice.service;

import java.util.List;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;

public interface AdminNoticeService {

	public List<AdminNoticeDto> noticeList() throws Exception;
	
	public int getAllNoticeCount() throws Exception;
	
}
