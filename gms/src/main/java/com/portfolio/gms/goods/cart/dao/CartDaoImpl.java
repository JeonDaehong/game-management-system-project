package com.portfolio.gms.goods.cart.dao;

import java.util.HashMap;
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

	/* 카트 내용 삭제 */
	@Override
	public void cartDelete(HashMap<String, Object> map) throws Exception {
		sqlSession.delete("cartMapper.cartDelete", map);
	}

	/* 회원탈퇴 시 해당 회원의 장바구니 삭제 */
	@Override
	public void cartDeleteFromMember(String memberId) throws Exception {
		sqlSession.delete("cartMapper.cartDeleteFromMember", memberId);
	}

}
