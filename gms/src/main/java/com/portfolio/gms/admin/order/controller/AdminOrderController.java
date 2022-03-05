package com.portfolio.gms.admin.order.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.admin.order.service.AdminOrderService;
import com.portfolio.gms.goods.cart.dto.CartDto;

@Controller
@RequestMapping("adminOrder")
public class AdminOrderController {
	
	@Autowired
	private AdminOrderService adminOrderService;

	/* 회원들 주문 리스트 전체보기 */
	@RequestMapping(value="/orderAll", method=RequestMethod.GET)
	public ModelAndView orderAll() throws Exception {
		ModelAndView mv = new ModelAndView("adminOrder/orderList");
		mv.addObject("orderList", adminOrderService.orderAll());
		return mv;
	}
	
	/* 주문한 상품 상세 정보 보기 */
	@RequestMapping(value="/orderInfo", method=RequestMethod.GET)
	public ModelAndView orderInfo(@RequestParam("orderString") String orderString, @RequestParam("content") String content) throws Exception {
		ModelAndView mv = new ModelAndView("adminOrder/orderInfo");
		
		String goods[] = orderString.split(",");
		List<CartDto> orderList = new ArrayList<CartDto>();
		
		for (int i=0; i<goods.length; i++) {
			CartDto cartDto = new CartDto();
			String tempGoodsInfo[] = goods[i].split("/");
			cartDto.setMemberId(tempGoodsInfo[0]);
			cartDto.setGoodsName(tempGoodsInfo[1]);
			cartDto.setPrice(Integer.parseInt(tempGoodsInfo[2]));
			cartDto.setCount(Integer.parseInt(tempGoodsInfo[3]));
			
			orderList.add(cartDto);
		}
		
		mv.addObject("orderList", orderList);
		mv.addObject("content", content);
		
		return mv;
	}
	
	/* 배송 상태 변경 */
	@RequestMapping(value="/changeType", method=RequestMethod.GET)
	public ResponseEntity<Object> changeType(@RequestParam("situationVlaue") String situationVlaue, @RequestParam("num") int num) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("situationVlaue", situationVlaue);
		map.put("num", num);
		adminOrderService.orderTypeChange(map);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
	
}
