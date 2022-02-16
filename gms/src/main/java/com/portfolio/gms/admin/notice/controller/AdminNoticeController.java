package com.portfolio.gms.admin.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.service.AdminNoticeService;

@Controller
@RequestMapping("adminNotice")
public class AdminNoticeController {
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
	// 공지사항 게시판 불러오기
	@RequestMapping(value="/noticeList", method=RequestMethod.GET)
	public ModelAndView noticeList(@RequestParam(name = "onePageViewCount"  , defaultValue = "10")    int onePageViewCount,
								   @RequestParam(name = "currentPageNumber" , defaultValue = "1")     int currentPageNumber) throws Exception {
		
		ModelAndView mv = new ModelAndView("notice/noticeList");
		
		
		// 페이지의 시작 게시글 인덱스
		int startBoardIdx = (currentPageNumber -1) * onePageViewCount;
		
		// 관련 정보 Map 생성 ( 한페이지에 보여줄 게시글 숫자 , 시작페이지의 인덱스 ) 
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		searchInfo.put("onePageViewCount", onePageViewCount);
		searchInfo.put("startBoardIdx", startBoardIdx);
		
		List<AdminNoticeDto> noticeList = adminNoticeService.noticeList(searchInfo);
		
		// 전체페이지 개수 = 전체게시글 수 / 한페이지에서 보여지는 글수
		int totalBoardCount = adminNoticeService.getAllNoticeCount();
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
		
		mv.addObject("startPage"         , startPage);
		mv.addObject("endPage"           , endPage);
		mv.addObject("totalBoardCount"   , totalBoardCount);
		mv.addObject("onePageViewCount"  , onePageViewCount);
		mv.addObject("currentPageNumber" , currentPageNumber);
		
		// 게시글 목록에 보여지는 글 내용
		
		for (AdminNoticeDto noticeDto : noticeList) {
			String cutContent = "";
			if (noticeDto.getContent().length() > 150) {
				cutContent = noticeDto.getContent().substring(0, 150);
				cutContent += ". . .";
				noticeDto.setCutContent(cutContent);
			} else {
				cutContent = noticeDto.getContent().substring(0, noticeDto.getContent().length());
				noticeDto.setCutContent(cutContent);
			}
		}
		
		mv.addObject("noticeList", noticeList);
		return mv;
	}

	
	@RequestMapping(value="/noticeWriter", method=RequestMethod.GET)
	public ModelAndView noticeWriter() {
		return new ModelAndView("adminNotice/noticeWriter");
	}
	

}
