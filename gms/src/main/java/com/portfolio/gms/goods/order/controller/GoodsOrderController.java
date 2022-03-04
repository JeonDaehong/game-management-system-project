package com.portfolio.gms.goods.order.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.gms.goods.cart.dto.CartDto;
import com.portfolio.gms.goods.cart.service.CartService;
import com.portfolio.gms.goods.order.dto.GoodsOrderDto;
import com.portfolio.gms.goods.order.service.GoodsOrderService;
import com.portfolio.gms.member.service.MemberService;

@Controller
@RequestMapping("order")
public class GoodsOrderController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private GoodsOrderService goodsOrderService;
	
	@Autowired
	private CartService cartService;

	/* Ajax로 데이터 넘겨받기 (카트 -> 주문지) */
	@RequestMapping(value="/goOrder", method=RequestMethod.GET, produces="application/text; charset=utf8")
	public ResponseEntity<Object> goOrder(@RequestParam("cartString") String cartString) throws Exception {
		return new ResponseEntity<Object>(cartString, HttpStatus.OK);
	}
	
	/* 상품 주문 페이지로 이동 */
	@RequestMapping(value="/orderForm", method=RequestMethod.GET)
	public ModelAndView orderForm(@RequestParam("cartString") String cartString, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/orderForm");
		
		List<CartDto> cartList = new ArrayList<CartDto>();
		
		String goods[] = cartString.split(",");
		
		int totalPrice = 0;
		
		for (int i=0; i<goods.length; i++) {
			CartDto cartDto = new CartDto();
			String tempGoodsInfo[] = goods[i].split("/");
			cartDto.setMemberId(tempGoodsInfo[0]);
			cartDto.setGoodsName(tempGoodsInfo[1]);
			cartDto.setPrice(Integer.parseInt(tempGoodsInfo[2]));
			cartDto.setCount(Integer.parseInt(tempGoodsInfo[3]));
			
			totalPrice += (Integer.parseInt(tempGoodsInfo[2]) * Integer.parseInt(tempGoodsInfo[3]));
			
			cartList.add(cartDto);
		}
		
		HttpSession session = request.getSession();
		String myId = (String)session.getAttribute("loginId");
		
		mv.addObject("cartString", cartString);
		mv.addObject("memberDto", memberService.getInfo(myId));
		mv.addObject("cartList", cartList);
		mv.addObject("totalPrice", totalPrice);
		
		
		return mv;
	}
	
	
	
	/* 상품 주문 */
	@RequestMapping(value="/goOrderForm", method=RequestMethod.POST)
	public ResponseEntity<Object> goOrderForm(HttpServletRequest request) throws Exception {
		
		/* 내가 주문한 상품 이름 찾기 */
		String cartString = request.getParameter("cartString");
		String goods[] = cartString.split(",");
		String goodsInfo[] = goods[0].split("/");
		
		/* 주문 등록 */
		GoodsOrderDto orderDto = new GoodsOrderDto();
		orderDto.setMemberId(request.getParameter("memberId"));
		orderDto.setPrice(Integer.parseInt(request.getParameter("totalPrice")));
		orderDto.setGoodsName(goodsInfo[1] + " 등 " + goods.length + "개 상품");
		orderDto.setSender(request.getParameter("sender"));
		orderDto.setRecipient(request.getParameter("recipient"));
		orderDto.setEmail(request.getParameter("email"));
		orderDto.setHp(request.getParameter("hp"));
		orderDto.setZipcode(request.getParameter("zipcode"));
		orderDto.setJibunAddress(request.getParameter("jibunAddress"));
		orderDto.setRoadAddress(request.getParameter("roadAddress"));
		orderDto.setNamujiAddress(request.getParameter("namujiAddress"));
		if (request.getParameter("content") == "" || request.getParameter("content") == null) {
			orderDto.setContent("남김 메시지가 없습니다.");
		} else {
			orderDto.setContent(request.getParameter("content"));
		}
		orderDto.setSituation("배송 준비중");
		
		goodsOrderService.order(orderDto);
		
		
		/* 카트 삭제 */
		for (int i=0; i<goods.length; i++) {
			HashMap<String, Object> goodsMap = new HashMap<String, Object>();
			String tempGoodsInfo[] = goods[i].split("/");
			goodsMap.put("memberId", tempGoodsInfo[0]);
			goodsMap.put("goodsName", tempGoodsInfo[1]);
			cartService.cartDelete(goodsMap);
		}
		
		
		String body = "<script>";
		   	   body += "alert('성공적으로 구매에 성공하셨습니다. 주문내용은 내정보-구매한게임 에서 확인하실 수 있습니다.');";
		   	   body += "location.href='" + request.getContextPath() + "/main/main';";
		   	   body += "</script>";
		   
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity<Object>(body, headers, HttpStatus.OK);
	}
	
	
	/* 내 주문 목록으로 이동 */
	@RequestMapping(value="/myOrder", method=RequestMethod.GET)
	public ModelAndView myOrder(@RequestParam("memberId") String memberId) throws Exception {
		ModelAndView mv = new ModelAndView("order/myOrder");
		mv.addObject("myOrderList", goodsOrderService.myOrders(memberId));
		return mv;
	}
	
}
