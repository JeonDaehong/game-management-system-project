package com.portfolio.gms.goods.service;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.goods.dto.GoodsDto;

public interface GoodsService {
	
	public List<GoodsDto> basicGoodsList() throws Exception;
	
	public GoodsDto getGoodsInfo(int num) throws Exception;

	public List<GoodsDto> popularGoodsList() throws Exception;
	
	public List<GoodsDto> discountGoodsList() throws Exception;
	
	public int getAllGoodsCount(HashMap<String, Object> map) throws Exception;
	
	public List<GoodsDto> goodsList(HashMap<String,Object> map) throws Exception;
}
