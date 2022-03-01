package com.portfolio.gms.goods.cart.dao;

import java.util.HashMap;
import java.util.List;

import com.portfolio.gms.goods.cart.dto.CartDto;

public interface CartDao {

	public void inCart(CartDto cartDto) throws Exception;
	
	public CartDto cartCheck(CartDto cartDto) throws Exception;
	
	public List<CartDto> cartList(String memberId) throws Exception;
	
	public void cartDelete(HashMap<String, Object> map) throws Exception;
}
