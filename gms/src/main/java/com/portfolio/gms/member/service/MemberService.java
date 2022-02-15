package com.portfolio.gms.member.service;

import com.portfolio.gms.member.dto.MemberDto;

public interface MemberService {

	public String overlapped(String memberId) throws Exception;
	
	public void addMember(MemberDto memberDto) throws Exception;
	
	public MemberDto login(MemberDto memberDto) throws Exception;
	
	public MemberDto getInfo(String memberId) throws Exception;
	
	public void memberUpdate(MemberDto memberDto) throws Exception;
	
	public void deleteCheckUpdate(String memberId) throws Exception;
	
	public void deleteMember(String dateString) throws Exception;
	
	public int attendanceCheckOn(String memberId) throws Exception;
	
	public void attendanceCheckOff() throws Exception;
}
