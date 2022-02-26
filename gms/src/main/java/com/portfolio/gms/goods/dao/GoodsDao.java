package com.portfolio.gms.goods.dao;

import java.util.List;

import com.portfolio.gms.goods.dto.GoodsDto;

public interface GoodsDao {

	public List<GoodsDto> basicGoodsList() throws Exception;
	
	public GoodsDto getGoodsInfo(int num) throws Exception;
	
	public List<GoodsDto> popularGoodsList() throws Exception;
}
