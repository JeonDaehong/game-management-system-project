package com.portfolio.gms.imageBoard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.imageBoard.dao.ImageBoardDao;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;

@Service
public class ImageBoardServiceImpl implements ImageBoardService {

	@Autowired
	private ImageBoardDao imageBoardDao;

	@Override
	public void insertImage(ImageBoardDto imageBoardDto) {
		imageBoardDao.insertImage(imageBoardDto);
	}
}
