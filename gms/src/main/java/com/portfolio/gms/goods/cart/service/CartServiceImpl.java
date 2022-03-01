package com.portfolio.gms.goods.cart.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.gms.goods.cart.dao.CartDao;
import com.portfolio.gms.goods.cart.dto.CartDto;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	/* 카트 체크 후 추가 */
	@Override
	public boolean cartCheck(CartDto cartDto) throws Exception {
		boolean check = false;
		
		if (cartDao.cartCheck(cartDto) == null) {
			cartDao.inCart(cartDto);
			check = true;
		}
		
		return check;
	}

	/* 카트 불러오기 */
	@Override
	public List<CartDto> cartList(String memberId) throws Exception {
		return cartDao.cartList(memberId);
	}

	/* 카트 내용 삭제 */
	@Override
	public void cartDelete(HashMap<String, Object> map) throws Exception {
		cartDao.cartDelete(map);
	}

}
