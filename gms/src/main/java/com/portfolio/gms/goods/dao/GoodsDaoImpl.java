package com.portfolio.gms.goods.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.dto.GoodsDto;

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
}
