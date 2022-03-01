package com.portfolio.gms.goods.cart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.gms.goods.cart.dto.CartDto;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	/* 카트에 추가 */
	@Override
	public void inCart(CartDto cartDto) throws Exception {
		sqlSession.insert("cartMapper.inCart", cartDto);
	}

	/* 카트 체크 */
	@Override
	public CartDto cartCheck(CartDto cartDto) throws Exception {
		return sqlSession.selectOne("cartMapper.cartCheck", cartDto);
	}

	/* 카트 불러오기 */
	public List<CartDto> cartList(String memberId) throws Exception {
		return sqlSession.selectList("cartMapper.cartList", memberId);
	}

}
