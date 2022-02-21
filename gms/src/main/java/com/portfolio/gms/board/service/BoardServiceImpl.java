package com.portfolio.gms.board.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.board.dao.BoardDao;
import com.portfolio.gms.board.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public List<BoardDto> boardList() throws Exception {
		return boardDao.boardList();
	}

	@Override
	public void addBoard(BoardDto boardDto) throws Exception {
		boardDao.addBoard(boardDto);
	}

	@Override
	public BoardDto boardInfo(int num) throws Exception {
		return boardDao.boardInfo(num);
	}

	@Override
	public void readCountUpdate(int num) throws Exception {
		boardDao.readCountUpdate(num);
	}

	@Override
	public void boardUpdate(BoardDto boardDto) throws Exception {
		boardDao.boardUpdate(boardDto);
	}

	@Override
	public void boardDelete(int num) throws Exception {
		boardDao.boardDelete(num);
	}

	@Override
	public void boardDeletefromMember(String writer) throws Exception {
		boardDao.boardDeletefromMember(writer);
	}

	// 계정 삭제시, 해당 계정으로 올린 이미지들 전부 삭제
	@Override
	public void boardImageDeleteFromMember(String writer) throws Exception {
		
		List<String> fileList = boardDao.boardImageList(writer);
		
		if (fileList.size() > 0) {
			for (String filename : fileList) {
				File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + filename);
				f.delete();
			}
		}
	}

}
