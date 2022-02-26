package com.portfolio.gms.goods.service;

import java.util.List;

import com.portfolio.gms.goods.dto.GoodsDto;

public interface GoodsService {
	
	public List<GoodsDto> basicGoodsList() throws Exception;
	
	public GoodsDto getGoodsInfo(int num) throws Exception;

	public List<GoodsDto> popularGoodsList() throws Exception;
}
