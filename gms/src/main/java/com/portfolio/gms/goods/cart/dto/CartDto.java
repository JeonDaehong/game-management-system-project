package com.portfolio.gms.goods.cart.dto;

import org.springframework.stereotype.Component;

@Component
public class CartDto {

	private int num;
	private String memberId;
	private String goodsName;
	private String filename;
	private int count;
	private boolean goodsExistence;
	private int price;

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public boolean isGoodsExistence() {
		return goodsExistence;
	}
	public void setGoodsExistence(boolean goodsExistence) {
		this.goodsExistence = goodsExistence;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
