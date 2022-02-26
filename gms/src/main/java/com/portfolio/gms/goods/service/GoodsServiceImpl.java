package com.portfolio.gms.goods.service;

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

}
