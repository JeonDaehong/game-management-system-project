package com.portfolio.gms.admin.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.admin.notice.dao.AdminNoticeDao;
import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.dto.NoticeSuggestionDto;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Autowired
	private AdminNoticeDao adminNoticeDao;
	
	@Override
	public List<AdminNoticeDto> noticeList(HashMap<String, Object> hashMap) throws Exception {
		return adminNoticeDao.noticeList(hashMap);
	}

	@Override
	public int getAllNoticeCount() throws Exception {
		return adminNoticeDao.getAllNoticeCount();
	}

	@Override
	public void noticeInsert(AdminNoticeDto adminNoticeDto) throws Exception {
		adminNoticeDao.noticeInsert(adminNoticeDto);
	}

	@Override
	public AdminNoticeDto getNoticeInfo(int num) throws Exception {
		return adminNoticeDao.getNoticeInfo(num);
	}

	@Override
	public void readCountUp(int num) throws Exception {
		adminNoticeDao.readCountUp(num);
	}

	@Override
	public void noticeUpdate(AdminNoticeDto adminNoticeDto) throws Exception {
		adminNoticeDao.noticeUpdate(adminNoticeDto);
	}

	@Override
	public void noticeDelete(int num) throws Exception {
		adminNoticeDao.noticeDelete(num);
	}

	@Override
	public boolean suggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception {

		boolean result = false;
		
		if (adminNoticeDao.suggestionCheck(noticeSuggestionDto) == null) {
			adminNoticeDao.suggestionCountUp(noticeSuggestionDto.getNoticeNum());
			adminNoticeDao.insertSuggestionCheck(noticeSuggestionDto);
			result = true;
		}
		
		return result;
	}

	@Override
	public void deleteSuggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception {
		adminNoticeDao.deleteSuggestionCheck(noticeSuggestionDto);
	}

	@Override
	public List<AdminNoticeDto> mainPageNoticeList() throws Exception {
		return adminNoticeDao.mainPageNoticeList();
	}

}
