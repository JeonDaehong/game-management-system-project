package com.portfolio.gms.goods.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.dto.BoardReplyDto;
import com.portfolio.gms.goods.dto.GoodsDto;
import com.portfolio.gms.goods.dto.GoodsReplyDto;
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
	public ModelAndView goodsList(@RequestParam(name = "onePageViewCount"  , defaultValue = "10") int onePageViewCount,
								  @RequestParam(name = "currentPageNumber" , defaultValue = "1")  int currentPageNumber,
								  @RequestParam(name = "searchKeyword"     , defaultValue = "") String searchKeyword,
								  @RequestParam(name = "genre"        	   , defaultValue = "total") String genre,
								  @RequestParam(name = "type"        	   , defaultValue = "total") String type,
								  @RequestParam(name = "minNum"        	   , defaultValue = "0") int minNum,
								  @RequestParam(name = "maxNum"        	   , defaultValue = "99999") int maxNum) throws Exception {
		
		ModelAndView mv = new ModelAndView("goods/goodsList");
		
		// 페이지의 시작 게시글 인덱스
		int startBoardIdx = (currentPageNumber -1) * onePageViewCount;
		
		// 관련 정보 Map 생성 ( 한페이지에 보여줄 게시글 숫자 , 시작페이지의 인덱스 ) 
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		searchInfo.put("onePageViewCount", onePageViewCount);
		searchInfo.put("startBoardIdx", startBoardIdx);
		searchInfo.put("searchKeyword", searchKeyword);
		searchInfo.put("genre", genre);
		searchInfo.put("type", type);
		searchInfo.put("minNum", minNum);
		searchInfo.put("maxNum", maxNum);
		List<GoodsDto> goodsList = goodsService.goodsList(searchInfo);
		
		// 게시글의 전체 개수를 반환하는 관련정보 Map 생성 ( 검색 키워드 , 검색어 ) 
		HashMap<String, Object> searchCountInfo = new HashMap<String, Object>();
		searchCountInfo.put("searchKeyword", searchKeyword);
		searchCountInfo.put("genre"		   , genre);
		searchCountInfo.put("type"		   , type);
		searchCountInfo.put("minNum"	   , minNum);
		searchCountInfo.put("maxNum"	   , maxNum);
		
		// 전체페이지 개수 = 전체게시글 수 / 한페이지에서 보여지는 글수
		int totalBoardCount = goodsService.getAllGoodsCount(searchCountInfo);
		int addPage = totalBoardCount % onePageViewCount == 0 ? 0 : 1;
		int totalPageCount = totalBoardCount / onePageViewCount + addPage;
		
		// 시작페이지
		int startPage = 1;
		
		if (currentPageNumber % 10 == 0) startPage = (currentPageNumber / 10 - 1) * 10 + 1;
		else 							 startPage = (currentPageNumber / 10) * 10 + 1;	
		
		// 끝페이지
		int endPage = startPage + 9;
		
		// 끝페이지가 전체 페이지 개수보다 크다면 
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		// 게시물이 한페이지에 보여지는 것보다 작다면
		if (onePageViewCount > totalBoardCount) {
			startPage = 1;
			endPage = 0;
		}
		
		if (totalBoardCount < 10 && totalBoardCount > 0) {
			endPage = 1;
		}
		
		mv.addObject("startPage"         , startPage);
		mv.addObject("endPage"           , endPage);
		mv.addObject("totalBoardCount"   , totalBoardCount);
		mv.addObject("onePageViewCount"  , onePageViewCount);
		mv.addObject("currentPageNumber" , currentPageNumber);
		mv.addObject("searchKeyword"     , searchKeyword);
		mv.addObject("genre"        	 , genre);
		mv.addObject("type"        		 , type);
		mv.addObject("minNum"        	 , minNum);
		mv.addObject("maxNum"        	 , maxNum);
		
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
		
		
		/* Top 6 인기 게임 */
		List<GoodsDto> popularGoodsList = goodsService.popularGoodsList();
		
		int endPopularGoods = 0;
		
		if (popularGoodsList != null) {
				
			if (popularGoodsList.size() > 5) {
				endPopularGoods = 5;
			} else {
				endPopularGoods = popularGoodsList.size();
			}
		}
			
		mv.addObject("endPopularGoods", endPopularGoods);
		mv.addObject("popularGoodsList", popularGoodsList);
		
		return mv;
	}
	
	/* 해당 상품 정보로 이동 */
	@RequestMapping(value="goodsInfo", method=RequestMethod.GET)
	public ModelAndView goodsInfo(@RequestParam("num") int num,
								  @RequestParam(name = "onePageViewCount"  , defaultValue = "10")    int onePageViewCount,
								  @RequestParam(name = "currentPageNumber" , defaultValue = "1")     int currentPageNumber) throws Exception {
		
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
		
		
		/* 댓글 가져오기 */
		int startBoardIdx = (currentPageNumber -1) * onePageViewCount;
		
		// 관련 정보 Map 생성 ( 한페이지에 보여줄 게시글 숫자 , 시작페이지의 인덱스 ) 
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		searchInfo.put("onePageViewCount", onePageViewCount);
		searchInfo.put("startBoardIdx", startBoardIdx);
		searchInfo.put("goodsNum", num);
		
		/* 해당 게시글의 댓글 불러오기 */
		List<GoodsReplyDto> replyList = goodsService.getReply(searchInfo);
		
		// 전체페이지 개수 = 전체게시글 수 / 한페이지에서 보여지는 글수
		int totalBoardCount = goodsService.getReplyCount(num);
		int addPage = totalBoardCount % onePageViewCount == 0 ? 0 : 1;
		int totalPageCount = totalBoardCount / onePageViewCount + addPage;
		
		// 시작페이지
		int startPage = 1;
		
		if (currentPageNumber % 10 == 0) startPage = (currentPageNumber / 10 - 1) * 10 + 1;
		else 							 startPage = (currentPageNumber / 10) * 10 + 1;	
		
		// 끝페이지
		int endPage = startPage + 9;
		
		// 끝페이지가 전체 페이지 개수보다 크다면 
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		// 게시물이 한페이지에 보여지는 것보다 작다면
		if (onePageViewCount > totalBoardCount) {
			startPage = 1;
			endPage = 0;
		}
		
		if (totalBoardCount < 10 && totalBoardCount > 0) {
			endPage = 1;
		}
		
		mv.addObject("startPage"         , startPage);
		mv.addObject("endPage"           , endPage);
		mv.addObject("totalBoardCount"   , totalBoardCount);
		mv.addObject("onePageViewCount"  , onePageViewCount);
		mv.addObject("currentPageNumber" , currentPageNumber);
		
		mv.addObject("replyList", replyList);
		
		
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
		
		
		/* 사이드 바 - 인기 게임 리스트 */
		List<GoodsDto> sidePopularGoodsList = goodsService.popularGoodsList();
		
		int endSidePopularGoods = 0;
		
		if (sidePopularGoodsList != null) {
				
			if (sidePopularGoodsList.size() > 2) {
				endSidePopularGoods = 2;
			} else {
				endSidePopularGoods = sidePopularGoodsList.size();
			}
		}
			
		mv.addObject("endSidePopularGoods", endSidePopularGoods);
		mv.addObject("sidePopularGoodsList", sidePopularGoodsList);
		
		return mv;
	}
	
	
	/* 댓글 입력 */
	@RequestMapping(value="/insertReply", method=RequestMethod.POST)
	public ResponseEntity<Object> insertReply(@ModelAttribute GoodsReplyDto goodsReplyDto, HttpServletRequest request) throws Exception {
		
		String body = "";
		
		/* 이미 리뷰를 적었었는지 체크 */
		if (goodsService.replyCheck(goodsReplyDto)) {
			   body = "<script>";
			   body += "alert('리뷰가 정상적으로 입력 되었습니다. 리뷰를 삭제하셔도, 별점은 그대로 반영됩니다.');";
			   body += "location.href='" + request.getContextPath() + "/goods/goodsInfo?num=" + goodsReplyDto.getGoodsNum() + "';";
			   body += "</script>";
		} else {
			   body = "<script>";
			   body += "alert('이미 해당 게시글에 리뷰를 작성하였습니다. 리뷰는 한 게임에 한 번만 작성할 수 있습니다.');";
			   body += "location.href='" + request.getContextPath() + "/goods/goodsInfo?num=" + goodsReplyDto.getGoodsNum() + "';";
			   body += "</script>";
		}

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
		
	}
	
	
	/* 댓글 삭제 */
	@RequestMapping(value="/goodsReplyDelete", method=RequestMethod.GET)
	public ResponseEntity<Object> goodsReplyDelete(@RequestParam("num") int num, @RequestParam("goodsNum") int goodsNum , HttpServletRequest request ) throws Exception {
		
		/* 해당 게시글 댓글 카운트 감소 */
		goodsService.scoreMinus(goodsNum);
		
		/* DB에서 댓글 정보 삭제 */
		goodsService.deleteReply(num);
		
		
		String body = "<script>";
			   body += "alert('리뷰가 정상적으로 삭제 하였습니다. 리뷰를 삭제하셔도, 별점은 그대로 반영됩니다.');";
			   body += "location.href='" + request.getContextPath() + "/goods/goodsInfo?num=" + goodsNum + "';";
			   body += "</script>";
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
}
