package com.portfolio.gms.admin.notice.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.dto.NoticeSuggestionDto;

@Repository
public class AdminNoticeDaoImpl implements AdminNoticeDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<AdminNoticeDto> noticeList(HashMap<String, Object> hashMap) throws Exception {
		return sqlSession.selectList("noticeMapper.noticeList", hashMap);
	}

	@Override
	public int getAllNoticeCount() throws Exception {
		return sqlSession.selectOne("noticeMapper.getAllNoticeCount");
	}

	@Override
	public void noticeInsert(AdminNoticeDto adminNoticeDto) throws Exception {
		sqlSession.insert("noticeMapper.noticeInsert", adminNoticeDto);
	}

	@Override
	public AdminNoticeDto getNoticeInfo(int num) throws Exception {
		return sqlSession.selectOne("noticeMapper.getNoticeInfo", num);
	}

	@Override
	public void readCountUp(int num) throws Exception {
		sqlSession.update("noticeMapper.readCountUp", num);
		
	}

	@Override
	public void noticeUpdate(AdminNoticeDto adminNoticeDto) throws Exception {
		sqlSession.update("noticeMapper.noticeUpdate", adminNoticeDto);
	}

	@Override
	public void noticeDelete(int num) throws Exception {
		sqlSession.delete("noticeMapper.noticeDelete", num);
	}

	@Override
	public NoticeSuggestionDto suggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception {
		return sqlSession.selectOne("noticeMapper.suggestionCheck", noticeSuggestionDto);
	}

	@Override
	public void suggestionCountUp(int num) throws Exception {
		sqlSession.update("noticeMapper.suggestionCountUp", num);
	}

	@Override
	public void insertSuggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception {
		sqlSession.insert("noticeMapper.insertSuggestionCheck", noticeSuggestionDto);
	}

	@Override
	public void deleteSuggestionCheck(NoticeSuggestionDto noticeSuggestionDto) throws Exception {
		sqlSession.delete("noticeMapper.deleteSuggestionCheck", noticeSuggestionDto);
	}

	@Override
	public List<AdminNoticeDto> mainPageNoticeList() throws Exception {
		return sqlSession.selectList("noticeMapper.mainPageNoticeList");
	}

}
