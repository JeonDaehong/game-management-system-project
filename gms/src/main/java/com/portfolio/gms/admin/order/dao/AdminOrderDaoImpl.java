package com.portfolio.gms.admin.order.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

@Repository
public class AdminOrderDaoImpl implements AdminOrderDao {

	@Autowired
	private SqlSession sqlSession;
	
	/* 모든 주문 목록 불러오기 */
	@Override
	public List<GoodsOrderDto> orderAll() throws Exception {
		return sqlSession.selectList("adminOrderMapper.orderAll");
	}

	/* 배송 상태 변경 */
	@Override
	public void orderTypeChange(HashMap<String, Object> map) throws Exception {
		sqlSession.update("adminOrderMapper.orderTypeChange", map);
	}

}
