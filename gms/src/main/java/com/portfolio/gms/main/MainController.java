package com.portfolio.gms.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.notice.dto.AdminNoticeDto;
import com.portfolio.gms.admin.notice.service.AdminNoticeService;

@Controller
public class MainController {
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
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
		
		int end = 0;
		
		if (noticeList.size() > 2) {
			end = 2;
		} else {
			end = noticeList.size();
		}
		
		mv.addObject("end", end);
		mv.addObject("noticeList", noticeList);
		return mv;
	}
	
}
