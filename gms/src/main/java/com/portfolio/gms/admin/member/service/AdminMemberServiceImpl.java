package com.portfolio.gms.admin.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.admin.member.dao.AdminMemberDao;
import com.portfolio.gms.member.dto.MemberDto;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDao adminMemberDao;

	/* 회원가입한 사람들 리스트 불러오기 (기본 :  가입한 순서) */
	@Override
	public List<MemberDto> memberList() {
		return adminMemberDao.memberList();
	}

	/* 회원가입한 사람들 리스트 불러오기 (옵션에 따라서) */
	@Override
	public List<MemberDto> memberListOption(String option) {
		return adminMemberDao.memberListOption(option);
	}

}
