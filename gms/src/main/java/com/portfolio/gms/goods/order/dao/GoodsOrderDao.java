package com.portfolio.gms.goods.order.dao;

import java.util.List;

import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

public interface GoodsOrderDao {

	public void order(GoodsOrderDto goodsOrderDto) throws Exception;
	
	public List<GoodsOrderDto> myOrders(String memberId) throws Exception;
}
