package com.portfolio.gms.admin.notice.controller;

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
import com.portfolio.gms.admin.notice.dto.NoticeSuggestionDto;
import com.portfolio.gms.admin.notice.service.AdminNoticeService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
@RequestMapping("adminNotice")
public class AdminNoticeController {
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
	@Autowired
	private ImageBoardService imageBoardService;
	
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
		
		if (totalBoardCount < 10 && totalBoardCount > 0) {
			endPage = 1;
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
		
		mv.addObject("noticeList", noticeList);
		return mv;
	}

	// 공지사항 업로드 페이지로 이동
	@RequestMapping(value="/noticeWriter", method=RequestMethod.GET)
	public ModelAndView noticeWriter() throws Exception {
		return new ModelAndView("adminNotice/noticeWriter");
	}
	
	// 공지사항 업로드
	@RequestMapping(value="/noticeWriter", method=RequestMethod.POST)
	public ResponseEntity<Object> noticeWriter(@ModelAttribute AdminNoticeDto adminNoticeDto, HttpServletRequest request) throws Exception {
	
		adminNoticeService.noticeInsert(adminNoticeDto);
		
		String body  = "<script>";
			   body += "alert('공지사항 작성이 완료되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/adminNotice/noticeList';";
			   body += "</script>";
	
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	// 공지사항 한 개씩 누를 시 내용공개
	@RequestMapping(value="/noticeInfo", method=RequestMethod.GET)
	public ModelAndView noticeInfo(@RequestParam("num") int num) throws Exception {
		ModelAndView mv = new ModelAndView("notice/noticeInfo");
		adminNoticeService.readCountUp(num);
		mv.addObject("noticeDto", adminNoticeService.getNoticeInfo(num));
		
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
	
	// 공지사항 수정 페이지로 이동
	@RequestMapping(value="/noticeUpdate", method=RequestMethod.GET)
	public ModelAndView noticeUpdate(@RequestParam("num") int num) throws Exception {
		ModelAndView mv = new ModelAndView("adminNotice/noticeUpdate");
		mv.addObject("noticeDto", adminNoticeService.getNoticeInfo(num));
		return mv;
	}
	// 공지사항 수정
	@RequestMapping(value="/noticeUpdate", method=RequestMethod.POST)
	public ResponseEntity<Object> noticeUpdate(@ModelAttribute AdminNoticeDto adminNoticeDto, HttpServletRequest request) throws Exception {
	
		adminNoticeService.noticeUpdate(adminNoticeDto);
		
		String body  = "<script>";
			   body += "alert('공지사항 수정이 완료되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/adminNotice/noticeInfo?num=" + adminNoticeDto.getNum() + "';";
			   body += "</script>";
	
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	// 공지사항 삭제 확인 페이지로 이동
	@RequestMapping(value="/noticeDelete", method=RequestMethod.GET)
	public ModelAndView noticeDelete(@RequestParam("num") int num) throws Exception {
		ModelAndView mv = new ModelAndView("adminNotice/noticeDelete");
		mv.addObject("noticeDto", adminNoticeService.getNoticeInfo(num));
		return mv;
	}
	
	// 공지사항 삭제
	@RequestMapping(value="/noticeDelete", method=RequestMethod.POST)
	public ResponseEntity<Object> noticeDelete(@RequestParam("num") int num, HttpServletRequest request) throws Exception {
	
		adminNoticeService.noticeDelete(num);
		
		NoticeSuggestionDto noticeSuggestionDto = new NoticeSuggestionDto();
		noticeSuggestionDto.setNoticeNum(num);
		noticeSuggestionDto.setMemberId("a");
		adminNoticeService.deleteSuggestionCheck(noticeSuggestionDto);
		
		String body  = "<script>";
			   body += "alert('공지사항 삭제가 완료되었습니다.');";
			   body += "location.href='" + request.getContextPath() + "/adminNotice/noticeList';";
			   body += "</script>";
	
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
	// 게시물 추천
	@RequestMapping(value="/noticeSuggestion", method=RequestMethod.POST)
	public ResponseEntity<Object> noticeSuggestion(@RequestParam("noticeNum") int noticeNum, @RequestParam("memberId") String memberId, HttpServletRequest request) throws Exception {
		
		NoticeSuggestionDto noticeSuggestionDto = new NoticeSuggestionDto();
		noticeSuggestionDto.setMemberId(memberId);
		noticeSuggestionDto.setNoticeNum(noticeNum);
		
		boolean result = adminNoticeService.suggestionCheck(noticeSuggestionDto);
		
		String body = "";
		
		if (result) {
			body  = "<script>";
			body += "alert('추천 완료 :D');";
			body += "location.href='" + request.getContextPath() + "/adminNotice/noticeInfo?num=" + noticeNum  + "';";
			body += "</script>";
		} else {
			body  = "<script>";
			body += "alert('이미 추천을 누른 게시물입니다.');";
			body += "location.href='" + request.getContextPath() + "/adminNotice/noticeInfo?num=" + noticeNum  + "';";
			body += "</script>";
		}
		
		HttpHeaders header = new HttpHeaders();
		header.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(body, header, HttpStatus.OK);
	}
	
}
