package com.portfolio.gms.goods.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

@Repository
public class GoodsOrderDaoImpl implements GoodsOrderDao {

	@Autowired
	private SqlSession sqlSession;
	
	/* 상품 주문 등록 */
	@Override
	public void order(GoodsOrderDto goodsOrderDto) throws Exception {
		sqlSession.insert("orderMapper.order", goodsOrderDto);
	}

	/* 주문한 상품 조회 */
	@Override
	public List<GoodsOrderDto> myOrders(String memberId) throws Exception {
		return sqlSession.selectList("orderMapper.myOrders", memberId);
	}

}
