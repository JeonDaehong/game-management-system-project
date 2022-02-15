package com.portfolio.gms.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.portfolio.gms.member.dao.MemberDao;
import com.portfolio.gms.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

	// ID로 MemberDto 불러오기 (ID 중복 체크)
	@Override
	public String overlapped(String memberId) throws Exception {
		String check = "true";
		if (memberDao.overlapped(memberId) == null) {
			check = "false";
		} else {
			check = "true";
		}
		return check;
	}

	// MemberDto로 MemberDto 추가하기 (회원가입)
	@Override
	public void addMember(MemberDto memberDto) throws Exception {
		memberDto.setMemberPw(pwdEncoder.encode(memberDto.getMemberPw()));
		memberDao.addMember(memberDto);
	}

	// MemberDto로 MemberDto 불러오기 (로그인)
	@Override
	public MemberDto login(MemberDto memberDto) throws Exception {
		MemberDto dbMemberDto = memberDao.overlapped(memberDto.getMemberId());
		if (dbMemberDto != null) {
			if (pwdEncoder.matches(memberDto.getMemberPw(), dbMemberDto.getMemberPw())) {
				return dbMemberDto;
			}
		}
		return null;
	}

	// ID(String)를 통해 MemberDto(Info) 불러오기
	@Override
	public MemberDto getInfo(String memberId) throws Exception {
		return memberDao.overlapped(memberId);
	}

	// 회원정보 수정
	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {
		memberDao.memberUpdate(memberDto);
	}

	// 계정 삭제 대기
	@Override
	public void deleteCheckUpdate(String memberId) throws Exception {
		memberDao.deleteCheckUpdate(memberId);
	}

	@Override
	public void deleteMember(String dateString) throws Exception {
		memberDao.deleteMember(dateString);
	}

}

