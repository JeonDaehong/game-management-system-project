package com.portfolio.gms.admin.goods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.admin.goods.dao.AdminGoodsDao;
import com.portfolio.gms.goods.dto.GoodsDto;

@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {

	@Autowired
	private AdminGoodsDao adminGoodsDao;

	/* 상품 등록 */
	@Override
	public void goodsRegistration(GoodsDto goodsDto) throws Exception {
		adminGoodsDao.goodsRegistration(goodsDto);
	}

	/* 해당 상품 정보 불러오기 (수정용) */
	@Override
	public GoodsDto getGoodsInfo(int num) throws Exception {
		return adminGoodsDao.getGoodsInfo(num);
	}

	/* 상품 정보 수정 */
	@Override
	public void goodsUpdate(GoodsDto goodsDto) throws Exception {
		adminGoodsDao.goodsUpdate(goodsDto);
	}

	/* 상품 삭제 */
	@Override
	public void goodsDelete(int num) throws Exception {
		adminGoodsDao.goodsDelete(num);
	}
	
}
