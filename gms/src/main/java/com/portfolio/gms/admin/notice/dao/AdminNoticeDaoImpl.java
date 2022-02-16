package com.portfolio.gms.admin.notice.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;

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

}
