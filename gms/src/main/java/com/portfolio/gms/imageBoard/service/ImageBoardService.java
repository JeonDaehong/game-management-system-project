package com.portfolio.gms.imageBoard.service;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.dto.ImageSuggestionDto;

public interface ImageBoardService {

	public void insertImage(ImageBoardDto imageBoardDto) throws Exception;
	
	public int imgCount() throws Exception;
	
	public List<ImageBoardDto> imgList() throws Exception;
	
	public boolean imgMemberCheck(HashMap<String, Object> map) throws Exception;
	
	public void imgDelete(String fileName) throws Exception;
	
	public void readCountUpdate(String fileName) throws Exception;
	
	public boolean imgSuggestionCheck(ImageSuggestionDto imageSuggestionDto) throws Exception;
	
	public void imgSuggestionDelete(ImageSuggestionDto imageSuggestionDto) throws Exception;

	public List<ImageBoardDto> popularImgList() throws Exception;
	
}
