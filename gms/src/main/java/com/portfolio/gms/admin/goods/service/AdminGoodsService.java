package com.portfolio.gms.admin.goods.service;

import com.portfolio.gms.goods.dto.GoodsDto;

public interface AdminGoodsService {

	public void goodsRegistration(GoodsDto goodsDto) throws Exception;
	
	public GoodsDto getGoodsInfo(int num) throws Exception;
	
	public void goodsUpdate(GoodsDto goodsDto) throws Exception;
	
	public void goodsDelete(int num) throws Exception;
	
	public void deleteReplyforBoard(int goodsNum) throws Exception; 
}
