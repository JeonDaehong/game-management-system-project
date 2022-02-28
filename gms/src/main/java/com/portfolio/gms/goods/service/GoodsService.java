package com.portfolio.gms.goods.service;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.dto.GoodsReplyDto;

public interface GoodsService {
	
	public List<GoodsDto> basicGoodsList() throws Exception;
	
	public GoodsDto getGoodsInfo(int num) throws Exception;

	public List<GoodsDto> popularGoodsList() throws Exception;
	
	public List<GoodsDto> discountGoodsList() throws Exception;
	
	public int getAllGoodsCount(HashMap<String, Object> map) throws Exception;
	
	public List<GoodsDto> goodsList(HashMap<String,Object> map) throws Exception;
	
	public boolean replyCheck(GoodsReplyDto goodsReplyDto) throws Exception;
	
	public int getReplyCount(int goodsNum) throws Exception;
	
	public List<GoodsReplyDto> getReply(HashMap<String, Object> map) throws Exception;

	public void scoreMinus(int num) throws Exception;
	
	public void deleteReply(int num) throws Exception;
	
	public void commentCountDownAll(String writer) throws Exception;
	
	public void deleteReplyforMember(String writer) throws Exception;
}
