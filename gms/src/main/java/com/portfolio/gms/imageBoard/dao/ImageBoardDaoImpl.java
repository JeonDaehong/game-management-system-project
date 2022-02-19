package com.portfolio.gms.imageBoard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.dto.ImageSuggestionDto;

@Repository
public class ImageBoardDaoImpl implements ImageBoardDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertImage(ImageBoardDto imageBoardDto) throws Exception {
		sqlSession.insert("imageMapper.insertImage", imageBoardDto);
	}

	@Override
	public int imgCount() throws Exception {
		return sqlSession.selectOne("imageMapper.imgCount");
	}

	@Override
	public List<ImageBoardDto> imgList() throws Exception {
		return sqlSession.selectList("imageMapper.imgList");
	}

	@Override
	public ImageBoardDto imgMemberCheck(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectOne("imageMapper.imgMemberCheck", map);
	}

	@Override
	public void imgDelete(String fileName) throws Exception {
		 sqlSession.delete("imageMapper.imgDelete", fileName);
	}

	@Override
	public void readCountUpdate(String fileName) throws Exception {
		sqlSession.update("imageMapper.readCountUpdate", fileName);
	}

	@Override
	public ImageSuggestionDto imgSuggestionCheck(ImageSuggestionDto imageSuggestionDto) throws Exception {
		return sqlSession.selectOne("imageMapper.imgSuggestionCheck", imageSuggestionDto);
	}

	@Override
	public void imgSuggestion(ImageSuggestionDto imageSuggestionDto) throws Exception {
		sqlSession.insert("imageMapper.imgSuggestion", imageSuggestionDto);
	}

	@Override
	public void imgSuggestionDelete(ImageSuggestionDto imageSuggestionDto) throws Exception {
		sqlSession.delete("imageMapper.imgSuggestionDelete", imageSuggestionDto);
	}

	@Override
	public List<ImageBoardDto> popularImgList() throws Exception {
		return sqlSession.selectList("imageMapper.imgPopularList");
	}
	
	
}
