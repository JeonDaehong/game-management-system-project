package com.portfolio.gms.goods.cart.controller;

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

import com.portfolio.gms.goods.cart.dto.CartDto;
import com.portfolio.gms.goods.cart.service.CartService;
import com.portfolio.gms.goods.dto.GoodsDto;

@Controller
@RequestMapping("cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	
	/* 카트에 담기 */
	@RequestMapping(value="/inCart", method=RequestMethod.POST)
	public ResponseEntity<Object> insertReply(@ModelAttribute GoodsDto goodsDto, @RequestParam("memberId") String memberId , HttpServletRequest request) throws Exception {
		
		CartDto cartDto = new CartDto();
		cartDto.setMemberId(memberId);
		cartDto.setGoodsName(goodsDto.getGoodsName());
		cartDto.setFilename(goodsDto.getFileName());
		
		if (goodsDto.getDiscountRate() == 0) {
			cartDto.setPrice(goodsDto.getPrice());
		} else {
			float tempPrice = (((float)100 - (float)goodsDto.getDiscountRate()) / (float)100);
			float price = (goodsDto.getPrice() * tempPrice);
			cartDto.setPrice(Math.round(price));
		}
		
		
		
		String body = "";
		
		if (cartService.cartCheck(cartDto)) {
			body = "<script>";
		    body += "alert('카트에 담았습니다.');";
		    body += "location.href='" + request.getContextPath() + "/cart/inCart?memberId=" + memberId + "';";
		    body += "</script>";
		} else {
			body = "<script>";
		    body += "alert('카트에 이미 있는 상품입니다. 중복해서 담을 수 없습니다.');";
		    body += "location.href='" + request.getContextPath() + "/goods/goodsList';";
		    body += "</script>";
		} 
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 카트로 이동 */
	@RequestMapping(value="/inCart", method=RequestMethod.GET)
	public ModelAndView inCart(@RequestParam("memberId") String memberId) throws Exception {
		ModelAndView mv = new ModelAndView("cart/inCart");
		mv.addObject("cartList", cartService.cartList(memberId));
		mv.addObject("cartCount", cartService.cartList(memberId).size());
		return mv;
	}
	
}
