package com.portfolio.gms.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<BoardDto> boardList() throws Exception {
		return sqlSession.selectList("boardMapper.boardList");
	}

	@Override
	public void addBoard(BoardDto boardDto) throws Exception {
		sqlSession.insert("boardMapper.addBoard", boardDto);
	}

	@Override
	public BoardDto boardInfo(int num) throws Exception {
		return sqlSession.selectOne("boardMapper.boardInfo", num);
	}

	@Override
	public void readCountUpdate(int num) throws Exception {
		sqlSession.update("boardMapper.readCountUpdate", num);
	}

	@Override
	public void boardUpdate(BoardDto boardDto) throws Exception {
		sqlSession.update("boardMapper.boardUpdate", boardDto);
	}

	@Override
	public void boardDelete(int num) throws Exception {
		sqlSession.delete("boardMapper.boardDelete", num);
	}

	@Override
	public void boardDeletefromMember(String writer) throws Exception {
		sqlSession.delete("boardMapper.boardDeletefromMember", writer);
	}

	@Override
	public List<String> boardImageList(String writer) throws Exception {
		return sqlSession.selectList("boardMapper.boardImageList", writer);
	}

	/* 댓글 입력 */
	@Override
	public void addReply(BoardReplyDto boardReplyDto) throws Exception {
		sqlSession.insert("boardReplyMapper.addReply", boardReplyDto);
	}

	/* 해당 게시글에 속한 댓글 불러오기 */
	@Override
	public List<BoardReplyDto> getReply(int boardNum) throws Exception {
		return sqlSession.selectList("boardReplyMapper.getReply", boardNum);
	}

	/* 댓글 작성 시, 해당 게시글 댓글 카운트 증가 */
	@Override
	public void commentCountUp(int boardNum) throws Exception {
		sqlSession.update("boardMapper.commentCountUp", boardNum);
	}

}
