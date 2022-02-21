package com.portfolio.gms.board.service;

import java.util.List;

import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;

public interface BoardService {

	public List<BoardDto> boardList() throws Exception;
	
	public void addBoard(BoardDto boardDto) throws Exception;
	
	public BoardDto boardInfo(int num) throws Exception;
	
	public void readCountUpdate(int num) throws Exception;
	
	public void boardUpdate(BoardDto boardDto) throws Exception;

	public void boardDelete(int num) throws Exception;
	
	public void boardDeletefromMember(String writer) throws Exception;
	
	public void boardImageDeleteFromMember(String writer) throws Exception;
	
	public void addReply(BoardReplyDto boardReplyDto) throws Exception;

	public List<BoardReplyDto> getReply(int boardNum) throws Exception;

	public void commentCountUp(int boardNum) throws Exception;
}
