package com.portfolio.gms.goods.cart.service;

import java.util.List;

import com.portfolio.gms.goods.cart.dto.CartDto;

public interface CartService {
	
	public boolean cartCheck(CartDto cartDto) throws Exception;
	
	public List<CartDto> cartList(String memberId) throws Exception;
}
