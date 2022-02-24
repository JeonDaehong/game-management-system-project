package com.portfolio.gms.admin.member.dao;

import java.util.List;

import com.portfolio.gms.member.dto.MemberDto;

public interface AdminMemberDao {

	public List<MemberDto> memberList();
	
	public List<MemberDto> memberListOption(String option);
	
}
