package com.portfolio.gms.board.dao;

import java.util.HashMap;
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
	
	/* 게시글의 갯수를 반환 (페이징) */
	@Override
	public int getAllBoardCount() throws Exception {
		return sqlSession.selectOne("boardMapper.getAllBoardCount");
	}
	
	@Override
	public List<BoardDto> boardList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList("boardMapper.boardList", map);
	}
	
	/* Main 페이지에 보이는 자유게시글 리스트 반환 */
	@Override
	public List<BoardDto> mainPageBoardList() throws Exception {
		return sqlSession.selectList("boardMapper.mainPageBoardList");
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
	public List<BoardReplyDto> getReply(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList("boardReplyMapper.getReply", map);
	}

	/* 댓글 작성 시, 해당 게시글 댓글 카운트 증가 */
	@Override
	public void commentCountUp(int boardNum) throws Exception {
		sqlSession.update("boardMapper.commentCountUp", boardNum);
	}

	/* 댓글 삭제 */
	@Override
	public void deleteReply(int num) throws Exception {
		sqlSession.delete("boardReplyMapper.deleteReply", num);
	}

	/* 댓글 & 계정 삭제 시, 해당 게시글 댓글 카운트 감소 */
	@Override
	public void commentCountDown(int boardNum) throws Exception {
		sqlSession.update("boardMapper.commentCountDown", boardNum);
	}

	/* 게시글 삭제 시, 해당 게시글에 포함 된 댓글들 삭제 */
	@Override
	public void deleteReplyforBoard(int boardNum) throws Exception {
		sqlSession.delete("boardReplyMapper.deleteReplyforBoard", boardNum);
	}

	/* 계정 삭제 시, 해당 계정과 관련 된 댓글들 삭제 */
	@Override
	public void deleteReplyforMember(String writer) throws Exception {
		sqlSession.delete("boardReplyMapper.deleteReplyforMember", writer);
	}

	
	/* 	해당 계정과 관련 된 게시물 고유 번호 반환
		- 계정 삭제시, 해당 게시글들의 댓글 카운트 감소에 사용	*/
	@Override
	public List<Integer> deleteReplyCount(String writer) throws Exception {
		return sqlSession.selectList("boardReplyMapper.deleteReplyCount", writer);
	}

	/* 댓글 갯수 반환 */
	@Override
	public int getReplyCount(int boardNum) throws Exception {
		return sqlSession.selectOne("boardReplyMapper.getReplyCount", boardNum);
	}

}
