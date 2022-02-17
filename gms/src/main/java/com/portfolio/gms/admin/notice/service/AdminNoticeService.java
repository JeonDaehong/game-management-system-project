package com.portfolio.gms.admin.notice.service;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.dto.NoticeSuggestionDto;

public interface AdminNoticeService {

	public List<AdminNoticeDto> noticeList(HashMap<String, Object> hashMap) throws Exception;
	
	public int getAllNoticeCount() throws Exception;
	
	public void noticeInsert(AdminNoticeDto adminNoticeDto) throws Exception;
	
	public AdminNoticeDto getNoticeInfo(int num) throws Exception;
	
	public void readCountUp(int num) throws Exception;
	
	public void noticeUpdate(AdminNoticeDto adminNoticeDto) throws Exception;
	
	public void noticeDelete(int num) throws Exception;
	
	public boolean suggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception;

	public void deleteSuggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception;

	public List<AdminNoticeDto> mainPageNoticeList() throws Exception;
}
