package com.portfolio.gms.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDto overlapped(String memberId) throws Exception {
		return sqlSession.selectOne("memberMapper.overlapped", memberId);
	}

	@Override
	public void addMember(MemberDto memberDto) throws Exception {
		sqlSession.insert("memberMapper.addMember", memberDto);
	}

	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {
		sqlSession.update("memberMapper.memberUpdate", memberDto);
	}

	@Override
	public void deleteCheckUpdate(String memberId) throws Exception {
		sqlSession.update("memberMapper.deleteCheckUpdate", memberId);
	}

	@Override
	public void deleteMember(String dateString) throws Exception {
		sqlSession.delete("memberMapper.deleteMember", dateString);
	}
}
