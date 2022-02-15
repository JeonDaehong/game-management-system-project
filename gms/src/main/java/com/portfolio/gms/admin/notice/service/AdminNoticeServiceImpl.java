package com.portfolio.gms.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.admin.notice.dao.AdminNoticeDao;
import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Autowired
	private AdminNoticeDao adminNoticeDao;
	
	@Override
	public List<AdminNoticeDto> noticeList() throws Exception {
		return adminNoticeDao.noticeList();
	}

	@Override
	public int getAllNoticeCount() throws Exception {
		return adminNoticeDao.getAllNoticeCount();
	}

}