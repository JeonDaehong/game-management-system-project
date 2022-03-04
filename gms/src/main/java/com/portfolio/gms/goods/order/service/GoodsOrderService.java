package com.portfolio.gms.goods.order.service;

import java.util.List;

import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

public interface GoodsOrderService {

	public void order(GoodsOrderDto goodsOrderDto) throws Exception;
	
	public List<GoodsOrderDto> myOrders(String memberId) throws Exception;
	
}
