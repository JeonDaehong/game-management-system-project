package com.portfolio.gms.goods.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("goods")
public class GoodsController {

	/* 상품 리스트로 이동 */
	@RequestMapping(value="goodsList", method=RequestMethod.GET)
	public ModelAndView goodsList() {
		ModelAndView mv = new ModelAndView("goods/goodsList");
		return mv;
	}
	
}
