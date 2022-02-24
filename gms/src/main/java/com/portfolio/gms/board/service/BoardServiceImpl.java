package com.portfolio.gms.board.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.board.dao.BoardDao;
import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux

	@Autowired
	private BoardDao boardDao;
	
	/* 게시글의 갯수를 반환 (페이징) */
	@Override
	public int getAllBoardCount() throws Exception {
		return boardDao.getAllBoardCount();
	}
	
	@Override
	public List<BoardDto> boardList(HashMap<String, Object> map) throws Exception {
		return boardDao.boardList(map);
	}
	
	/* Main 페이지에 보이는 자유게시글 리스트 반환 */
	@Override
	public List<BoardDto> mainPageBoardList() throws Exception {
		return boardDao.mainPageBoardList();
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

	/* 계정 삭제시, 해당 계정으로 올린 자유게시판 내의 이미지 파일들을 폴더에서 전부 삭제 */
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

	/* 댓글 입력 */
	@Override
	public void addReply(BoardReplyDto boardReplyDto) throws Exception {
		boardDao.addReply(boardReplyDto);
	}

	/* 해당 게시글에 속한 댓글 불러오기 */
	@Override
	public List<BoardReplyDto> getReply(HashMap<String, Object> map) throws Exception {
		return boardDao.getReply(map);
	}

	/* 댓글 작성 시, 해당 게시글 댓글 카운트 증가 */
	@Override
	public void commentCountUp(int boardNum) throws Exception {
		boardDao.commentCountUp(boardNum);
	}

	/* 댓글 삭제 */
	@Override
	public void deleteReply(int num) throws Exception {
		boardDao.deleteReply(num);
	}

	/* 댓글 작성 시, 해당 게시글 댓글 카운트 감소 */
	@Override
	public void commentCountDown(int boardNum) throws Exception {
		boardDao.commentCountDown(boardNum);
	}

	/* 게시글 삭제 시, 해당 게시글에 포함 된 댓글들 삭제 */
	@Override
	public void deleteReplyforBoard(int boardNum) throws Exception {
		boardDao.deleteReplyforBoard(boardNum);
	}

	/* 계정 삭제 시, 해당 아이디의 댓글들 전부 삭제 */
	@Override
	public void deleteReplyforMember(String writer) throws Exception {
		boardDao.deleteReplyforMember(writer);
	}

	/*
		계정 삭제 시, 해당 아이디의 댓글들이 삭제되면서
		그 댓글들을 보유한 게시글의 댓글 카운트 감소
	*/
	@Override
	public void commentCountDownAll(String writer) throws Exception {
		
		List<Integer> boardNumList = boardDao.deleteReplyCount(writer);
		
		if (boardNumList.size() > 0) {
			for (int boardNum : boardNumList) {
				boardDao.commentCountDown(boardNum);
			}
		}
	}

	@Override
	public int getReplyCount(int boardNum) throws Exception {
		return boardDao.getReplyCount(boardNum);
	}


}
