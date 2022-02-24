package com.portfolio.gms.board.dao;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;

public interface BoardDao {
	
	public int getAllBoardCount() throws Exception;

	public List<BoardDto> boardList(HashMap<String, Object> map) throws Exception;
	
	public List<BoardDto> mainPageBoardList() throws Exception;
	
	public void addBoard(BoardDto boardDto) throws Exception;
	
	public BoardDto boardInfo(int num) throws Exception;
	
	public void readCountUpdate(int num) throws Exception;

	public void boardUpdate(BoardDto boardDto) throws Exception;
	
	public void boardDelete(int num) throws Exception;
	
	public void boardDeletefromMember(String writer) throws Exception;
	
	public List<String> boardImageList(String writer) throws Exception;
	
	public void addReply(BoardReplyDto boardReplyDto) throws Exception;
	
	public List<BoardReplyDto> getReply(HashMap<String, Object> map) throws Exception;
	
	public void commentCountUp(int boardNum) throws Exception;
	
	public void deleteReply(int num) throws Exception;
	
	public void commentCountDown(int boardNum) throws Exception;
	
	public void deleteReplyforBoard(int boardNum) throws Exception;
	
	public void deleteReplyforMember(String writer) throws Exception;
	
	public List<Integer> deleteReplyCount(String writer) throws Exception;

	public int getReplyCount(int boardNum) throws Exception;
}
