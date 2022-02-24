package com.portfolio.gms.admin.member.service;

import java.util.List;

import com.portfolio.gms.member.dto.MemberDto;

public interface AdminMemberService {

	public List<MemberDto> memberList();
	
	public List<MemberDto> memberListOption(String option);
	
}
