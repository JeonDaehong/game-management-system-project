package com.portfolio.gms.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.service.GoodsService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
@RequestMapping("goods")
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private ImageBoardService imageBoardService;
	
	/* 상품 리스트로 이동 */
	@RequestMapping(value="goodsList", method=RequestMethod.GET)
	public ModelAndView goodsList() throws Exception {
		
		ModelAndView mv = new ModelAndView("goods/goodsList");
		
		List<GoodsDto> goodsList = goodsService.basicGoodsList();
		
		/* 게시글 목록에 보여지는 글 내용 */
		for (GoodsDto goodsDto : goodsList) {
			String cutContent = "";
			if (goodsDto.getContent().length() > 50) {
				cutContent = goodsDto.getContent().substring(0, 50);
				cutContent += ". . .";
				goodsDto.setCutContent(cutContent);
			} else {
				cutContent = goodsDto.getContent().substring(0, goodsDto.getContent().length());
				goodsDto.setCutContent(cutContent);
			}
		}
		
		mv.addObject("goodsList", goodsList);
		return mv;
	}
	
	/* 해당 상품 정보로 이동 */
	@RequestMapping(value="goodsInfo", method=RequestMethod.GET)
	public ModelAndView goodsInfo(@RequestParam("num") int num) throws Exception {
		
		ModelAndView mv = new ModelAndView("goods/goodsInfo");
		
		GoodsDto goodsDto = goodsService.getGoodsInfo(num);
		
		/* 게시글 목록에 보여지는 글 내용 */
		String cutContent = "";
		if (goodsDto.getContent().length() > 80) {
			cutContent = goodsDto.getContent().substring(0, 80);
			cutContent += ". . . (이하 정보는 상품정보 란에서 확인)";
			goodsDto.setCutContent(cutContent);
		} else {
			cutContent = goodsDto.getContent().substring(0, goodsDto.getContent().length());
			goodsDto.setCutContent(cutContent);
		}
		
		mv.addObject("goodsDto", goodsDto);
		
		// Side Bar - 인기 이미지
		List<ImageBoardDto> popularImgList =  imageBoardService.popularImgList();
		
		int endPopularImg = 0;
		
		if (popularImgList != null) {
			
			if (popularImgList.size() > 5) {
				endPopularImg = 5;
			} else {
				endPopularImg = popularImgList.size();
			}
			
		}
				
		mv.addObject("endPopularImg", endPopularImg);
		mv.addObject("popularImgList", popularImgList);
		
		return mv;
	}
	
}
