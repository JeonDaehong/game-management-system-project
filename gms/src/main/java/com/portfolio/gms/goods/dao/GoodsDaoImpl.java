package com.portfolio.gms.goods.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.dto.GoodsReplyDto;

@Repository
public class GoodsDaoImpl implements GoodsDao {

	@Autowired
	private SqlSession sqlSession;
	
	/* 최초 기본적인 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> basicGoodsList() throws Exception {
		return sqlSession.selectList("goodsMapper.basicGoodsList");
	}

	/* 해당 게시글 불러오기 */
	@Override
	public GoodsDto getGoodsInfo(int num) throws Exception {
		return sqlSession.selectOne("goodsMapper.getGoodsInfo", num);
	}

	/* 인기순으로 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> popularGoodsList() throws Exception {
		return sqlSession.selectList("goodsMapper.popularGoodsList");
	}

	/* 할인률순으로 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> discountGoodsList() throws Exception {
		return sqlSession.selectList("goodsMapper.discountGoodsList");
	}

	/* 상품 갯수 반환 */
	@Override
	public int getAllGoodsCount(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectOne("goodsMapper.getAllGoodsCount", map);
	}

	/* 원하는 갯수만큼 상품 반환 */
	@Override
	public List<GoodsDto> goodsList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList("goodsMapper.goodsList", map);
	}

	/* 리뷰를 썼는지 체크 */
	@Override
	public GoodsReplyDto replyCheck(GoodsReplyDto goodsReplyDto) throws Exception {
		return sqlSession.selectOne("goodsReplyMapper.replyCheck", goodsReplyDto);
	}

	/* 해당 게시글의 점수, 리뷰 인원 증가 */
	@Override
	public void scorePlus(HashMap<String, Integer> insertMap) throws Exception {
		sqlSession.update("goodsMapper.scorePlus", insertMap);
	}

	/* 댓글 작성 */
	@Override
	public void insertReply(GoodsReplyDto goodsReplyDto) throws Exception {
		sqlSession.insert("goodsReplyMapper.insertReply", goodsReplyDto);
	}

	/* 리뷰 갯수 반환 쿼리문 */
	@Override
	public int getReplyCount(int goodsNum) throws Exception {
		return sqlSession.selectOne("goodsReplyMapper.getReplyCount", goodsNum);
	}

	/* 해당 게시글에 있는 리뷰 불러오는 쿼리문 */
	@Override
	public List<GoodsReplyDto> getReply(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList("goodsReplyMapper.getReply", map);
	}

	/* 리뷰 삭제시, 리뷰 갯수 감소 */
	@Override
	public void scoreMinus(int num) throws Exception {
		sqlSession.update("goodsMapper.scoreMinus", num);
	}

	/* 리뷰 삭제 */
	@Override
	public void deleteReply(int num) throws Exception {
		sqlSession.delete("goodsReplyMapper.deleteReply", num);
	}

	/* 계정 삭제 시, 해당 계정과 관련 된 게시물 고유 번호 반환 */
	@Override
	public List<Integer> deleteReplyCount(String writer) throws Exception {
		return sqlSession.selectList("goodsReplyMapper.deleteReplyCount", writer);
	}

	/* 계정 삭제 시, 해당 계정과 관련 된 리뷰들 삭제 */
	@Override
	public void deleteReplyforMember(String writer) throws Exception {
		sqlSession.delete("goodsReplyMapper.deleteReplyforMember", writer);
	}
}
