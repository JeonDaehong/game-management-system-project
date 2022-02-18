package com.portfolio.gms.imageBoard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.imageBoard.dto.ImageBoardDto;

@Repository
public class ImageBoardDaoImpl implements ImageBoardDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertImage(ImageBoardDto imageBoardDto) {
		sqlSession.insert("iamgeMapper.insertImage", imageBoardDto);
	}
	
}
