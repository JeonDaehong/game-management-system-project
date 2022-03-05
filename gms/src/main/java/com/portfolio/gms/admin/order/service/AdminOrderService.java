package com.portfolio.gms.admin.order.service;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

public interface AdminOrderService {

	public List<GoodsOrderDto> orderAll() throws Exception;
	
	public void orderTypeChange(HashMap<String, Object> map) throws Exception;
}
