package com.portfolio.gms.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.service.AdminNoticeService;
import com.portfolio.gms.board.dto.BoardDto;
import com.portfolio.gms.board.service.BoardService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
public class MainController {
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
	@Autowired
	private ImageBoardService imageBoardService;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/" , method=RequestMethod.GET)
	public ModelAndView home() throws Exception {
		return new ModelAndView("redirect:/main/main");
	}

	// 메인 화면으로 이동
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public ModelAndView memberMain() throws Exception {
		ModelAndView mv = new ModelAndView("main/main");
		
		// 공지사항
		List<AdminNoticeDto> noticeList = adminNoticeService.mainPageNoticeList();
		
		int endNotice = 0;
		
		if (noticeList != null ) {
			
			if (noticeList.size() > 0) {
				for (AdminNoticeDto noticeDto : noticeList) {
					String cutContent = "";
					if (noticeDto.getContent().length() > 30) {
						cutContent = noticeDto.getContent().substring(0, 30);
						cutContent += ". . .";
						noticeDto.setCutContent(cutContent);
					} else {
						cutContent = noticeDto.getContent().substring(0, noticeDto.getContent().length());
						noticeDto.setCutContent(cutContent);
					}
				}
				
			if (noticeList.size() > 2) {
				endNotice = 2;
			} else {
				endNotice = noticeList.size();
			}
		}
			
		mv.addObject("endNotice", endNotice);
		mv.addObject("noticeList", noticeList);

		}
		
		
		// 최신 이미지
		List<ImageBoardDto> imgList =  imageBoardService.imgList();
		
		int endImg = 0;
		
		if (imgList != null) {
			
			if (imgList.size() > 8) {
				endImg = 8;
			} else {
				endImg = imgList.size();
			}
			
		}
		
		mv.addObject("endImg", endImg);
		mv.addObject("imgList", imgList);
		
		
		// 인기 이미지
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
		
		
		// 자유 게시판
		List<BoardDto> boardList = boardService.mainPageBoardList();
		
		int endBoard = 0;
		
		if (boardList != null) {
			
			if (boardList.size() > 0) {
				for (BoardDto boardDto : boardList) {
					String cutContent = "";
					if (boardDto.getContent().length() > 100) {
						cutContent = boardDto.getContent().substring(0, 100);
						cutContent += ". . .";
						boardDto.setCutContent(cutContent);
					} else {
						cutContent = boardDto.getContent().substring(0, boardDto.getContent().length());
						boardDto.setCutContent(cutContent);
					}
				}
				
				if (boardList.size() > 1) {
					endBoard = 1;
				} else {
					endBoard = noticeList.size();
				}
			}
			
		}
		
		mv.addObject("boardList", boardList);
		mv.addObject("endBoard", endBoard);
		
		return mv;
	}
	
}
