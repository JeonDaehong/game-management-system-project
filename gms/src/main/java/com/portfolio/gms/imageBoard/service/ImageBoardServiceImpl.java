package com.portfolio.gms.imageBoard.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.imageBoard.dao.ImageBoardDao;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.dto.ImageSuggestionDto;

@Service
public class ImageBoardServiceImpl implements ImageBoardService {

	@Autowired
	private ImageBoardDao imageBoardDao;

	@Override
	public void insertImage(ImageBoardDto imageBoardDto) throws Exception {
		imageBoardDao.insertImage(imageBoardDto);
	}

	@Override
	public int imgCount() throws Exception {
		return imageBoardDao.imgCount();
	}

	@Override
	public List<ImageBoardDto> imgList() throws Exception {
		return imageBoardDao.imgList();
	}

	@Override
	public boolean imgMemberCheck(HashMap<String, Object> map) throws Exception {
		boolean check = false;
		if (imageBoardDao.imgMemberCheck(map) != null) {
			check = true;
		}
		return check;
	}

	@Override
	public void imgDelete(String fileName) throws Exception {
		imageBoardDao.imgDelete(fileName);
	}

	@Override
	public void readCountUpdate(String fileName) throws Exception {
		imageBoardDao.readCountUpdate(fileName);
	}

	@Override
	public boolean imgSuggestionCheck(ImageSuggestionDto imageSuggestionDto) throws Exception {
		boolean check = false;
		
		if (imageBoardDao.imgSuggestionCheck(imageSuggestionDto) == null) {
			imageBoardDao.imgSuggestion(imageSuggestionDto);
			check = true;
		}
		
		return check;
	}

	@Override
	public void imgSuggestionDelete(ImageSuggestionDto imageSuggestionDto) throws Exception {
		imageBoardDao.imgSuggestionDelete(imageSuggestionDto);
	}

	@Override
	public List<ImageBoardDto> popularImgList() throws Exception {
		return imageBoardDao.popularImgList();
	}
}
