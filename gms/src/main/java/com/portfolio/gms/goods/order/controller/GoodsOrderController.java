package com.portfolio.gms.goods.order.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.goods.cart.dto.CartDto;

@Controller
@RequestMapping("order")
public class GoodsOrderController {

	@RequestMapping(value="/goOrder", method=RequestMethod.GET)
	public void goOrder(@ModelAttribute CartDto cartDto) {
		
		System.out.println(cartDto.getCartList().get(0).getCount());
		System.out.println(cartDto.getCartList().get(1).getCount());
		
	}
}
