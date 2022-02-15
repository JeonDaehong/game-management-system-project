package com.portfolio.gms.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping(value="/" , method=RequestMethod.GET)
	public ModelAndView home() throws Exception {
		return new ModelAndView("redirect:/main/main");
	}

	// 메인 화면으로 이동
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public ModelAndView memberMain() throws Exception {
		return new ModelAndView("main/main");
	}
	
}
