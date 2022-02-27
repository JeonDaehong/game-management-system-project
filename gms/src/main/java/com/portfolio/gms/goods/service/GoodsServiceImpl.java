package com.portfolio.gms.goods.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.goods.dao.GoodsDao;
import com.portfolio.gms.goods.dto.GoodsDto;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDao goodsDao;
	
	
	/* 최초 기본적인 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> basicGoodsList() throws Exception {
		return goodsDao.basicGoodsList();
	}

	/* 해당 게시글 불러오기 */
	@Override
	public GoodsDto getGoodsInfo(int num) throws Exception {
		return goodsDao.getGoodsInfo(num);
	}

	/* 인기순으로 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> popularGoodsList() throws Exception {
		return goodsDao.popularGoodsList();
	}

	/* 할인률순으로 상품리스트 불러오기 */
	@Override
	public List<GoodsDto> discountGoodsList() throws Exception {
		return goodsDao.discountGoodsList();
	}

	/* 상품 갯수 반환 */
	@Override
	public int getAllGoodsCount(HashMap<String, Object> map) throws Exception {
		return goodsDao.getAllGoodsCount(map);
	}

	/* 원하는 갯수만큼 상품 반환 */
	@Override
	public List<GoodsDto> goodsList(HashMap<String, Object> map) throws Exception {
		return goodsDao.goodsList(map);
	}

}
