package com.portfolio.gms.goods.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.goods.order.dao.GoodsOrderDao;
import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

@Service
public class GoodsOrderServiceImpl implements GoodsOrderService {

	@Autowired
	private GoodsOrderDao goodsOrderDao;
	
	/* 상품 주문 등록 */
	@Override
	public void order(GoodsOrderDto goodsOrderDto) throws Exception {
		goodsOrderDao.order(goodsOrderDto);
	}

	/* 주문한 상품 조회 */
	@Override
	public List<GoodsOrderDto> myOrders(String memberId) throws Exception {
		return goodsOrderDao.myOrders(memberId);
	}

}
