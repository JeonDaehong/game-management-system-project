package com.portfolio.gms.goods.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.portfolio.gms.goods.cart.dto.CartDto;

@Controller
@RequestMapping("order")
public class GoodsOrderController {

	@RequestMapping(value="/goOrder", method=RequestMethod.GET)
	public ResponseEntity<Object> goOrder(@ModelAttribute CartDto cartDto, HttpServletRequest request) {
		
		for (int i=0; i<cartDto.getCartList().size(); i++) {
			CartDto cart = new CartDto();
			cart.setMemberId(cartDto.getCartList().get(i).getMemberId());
			cart.setGoodsName(cartDto.getCartList().get(i).getGoodsName());
			cart.setCount(cartDto.getCartList().get(i).getCount());
		}
		
		String body = "";
		
			   body = "<script>";
			   body += "alert('구매할 수 없는 상품이 있습니다. - 재고부족, 삭제된 상품 ');";
			   body += "location.href='" + request.getContextPath() + "/cart/inCart?memberId=" + cartDto.getCartList().get(0).getMemberId() + "';";
			   body += "</script>";
		
			   body = "<script>";
			   body += "location.href='" + request.getContextPath() + "/main/main';";
			   body += "</script>";
		   
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
}
