package com.portfolio.gms.admin.goods.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.dto.GoodsDto;

@Repository
public class AdminGoodsDaoImpl implements AdminGoodsDao {

	@Autowired
	private SqlSession sqlSession;

	
	/* 상품 등록 */
	@Override
	public void goodsRegistration(GoodsDto goodsDto) throws Exception {
		sqlSession.insert("adminGoodsMapper.goodsRegistration", goodsDto);
	}
	
	/* 해당 상품 정보 불러오기 (수정용) */
	@Override
	public GoodsDto getGoodsInfo(int num) throws Exception {
		return sqlSession.selectOne("adminGoodsMapper.getGoodsInfo", num);
	}

	/* 상품 정보 수정 */
	@Override
	public void goodsUpdate(GoodsDto goodsDto) throws Exception {
		sqlSession.update("adminGoodsMapper.goodsUpdate", goodsDto);
	}

	/* 상품 삭제 */
	@Override
	public void goodsDelete(int num) throws Exception {
		sqlSession.delete("adminGoodsMapper.goodsDelete", num);
	}
}
