package com.portfolio.gms.goods.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.goods.dao.GoodsDao;
import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.dto.GoodsReplyDto;

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

	@Override
	public boolean replyCheck(GoodsReplyDto goodsReplyDto) throws Exception {
		boolean check = false;
			if (goodsDao.replyCheck(goodsReplyDto) == null) {
				
				/* 해당 게시글 댓글 카운트, 평점 증가 */
				GoodsDto dbGoodsDto = goodsDao.getGoodsInfo(goodsReplyDto.getGoodsNum());
				int insertScore = (((dbGoodsDto.getScore() * dbGoodsDto.getReviewAll()) + goodsReplyDto.getScore()) / (dbGoodsDto.getReviewAll() + 1));
				HashMap<String, Integer> insertMap = new HashMap<String, Integer>();
				insertMap.put("insertScore", insertScore);
				insertMap.put("insertScorePlus", goodsReplyDto.getScore());
				insertMap.put("num", goodsReplyDto.getGoodsNum());
				goodsDao.scorePlus(insertMap);
				
				/* DB에 댓글 정보 추가 */
				goodsDao.insertReply(goodsReplyDto);
				
				check = true;
			}
		return check;
	}

	
	/* 리뷰 갯수 반환 쿼리문 */
	@Override
	public int getReplyCount(int goodsNum) throws Exception {
		return goodsDao.getReplyCount(goodsNum);
	}

	/* 해당 게시글에 있는 리뷰 불러오는 쿼리문 */
	@Override
	public List<GoodsReplyDto> getReply(HashMap<String, Object> map) throws Exception {
		return goodsDao.getReply(map);
	}

	/* 리뷰 삭제시, 리뷰 갯수 감소 */
	@Override
	public void scoreMinus(int num) throws Exception {
		goodsDao.scoreMinus(num);
	}

	/* 리뷰 삭제 */
	@Override
	public void deleteReply(int num) throws Exception {
		goodsDao.deleteReply(num);
	}
	
	
	/*
		계정 삭제 시, 해당 아이디의 댓글들이 삭제되면서
		그 댓글들을 보유한 게시글의 댓글 카운트 감소
	*/
	@Override
	public void commentCountDownAll(String writer) throws Exception {
		
		List<Integer> goodsNumList = goodsDao.deleteReplyCount(writer);
		
		if (goodsNumList.size() > 0) {
			for (int goodsNum : goodsNumList) {
				goodsDao.scoreMinus(goodsNum);
			}
		}
	}
	
	
	/* 계정 삭제 시, 해당 아이디의 댓글들 전부 삭제 */
	@Override
	public void deleteReplyforMember(String writer) throws Exception {
		goodsDao.deleteReplyforMember(writer);
	}

}
