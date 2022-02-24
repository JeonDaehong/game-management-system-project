package com.portfolio.gms.admin.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.member.dto.MemberDto;

@Repository
public class AdminMemberDaoImpl implements AdminMemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	/* 회원가입한 사람들 리스트 불러오기 (기본 : 가입한 순서) */
	@Override
	public List<MemberDto> memberList() {
		return sqlSession.selectList("adminMemberMapper.memberList");
	}

	/* 회원가입한 사람들 리스트 불러오기 (옵션에 따라서) */
	@Override
	public List<MemberDto> memberListOption(String option) {
		return sqlSession.selectList("adminMemberMapper.memberListOption", option);
	}

}
