package com.portfolio.gms.admin.order.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.admin.order.dao.AdminOrderDao;
import com.portfolio.gms.goods.order.dto.GoodsOrderDto;

@Service
public class AdminOrderServiceImpl implements AdminOrderService {
	
	@Autowired
	private AdminOrderDao adminOrderDao;

	/* 모든 주문 목록 불러오기 */
	@Override
	public List<GoodsOrderDto> orderAll() throws Exception {
		return adminOrderDao.orderAll();
	}

	/* 배송 상태 변경 */
	@Override
	public void orderTypeChange(HashMap<String, Object> map) throws Exception {
		adminOrderDao.orderTypeChange(map);
	}

}
