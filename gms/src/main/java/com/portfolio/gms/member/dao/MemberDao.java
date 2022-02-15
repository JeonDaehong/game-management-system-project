package com.portfolio.gms.member.dao;

import java.util.Map;

import com.portfolio.gms.member.dto.MemberDto;

public interface MemberDao {

	public MemberDto overlapped(String memberId) throws Exception;
	
	public void addMember(MemberDto memberDto) throws Exception;

	public void memberUpdate(MemberDto memberDto) throws Exception;
	
	public void deleteCheckUpdate(String memberId) throws Exception;
	
	public void deleteMember(String dateString) throws Exception;
	
	public void attendanceCheckOn(Map<String, Object> checkMap) throws Exception;
	
	public void attendanceCheckOff() throws Exception;
		
}
