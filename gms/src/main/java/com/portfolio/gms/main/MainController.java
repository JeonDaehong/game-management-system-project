package com.portfolio.gms.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.service.AdminNoticeService;
import com.portfolio.gms.imageBoard.dto.ImageBoardDto;
import com.portfolio.gms.imageBoard.service.ImageBoardService;

@Controller
public class MainController {
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
	@Autowired
	private ImageBoardService imageBoardService;
	
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
					if (noticeDto.getContent().length() > 150) {
						cutContent = noticeDto.getContent().substring(0, 150);
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
		
		return mv;
	}
	
}
