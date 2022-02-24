package com.portfolio.gms.goods.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class GoodsDto {

	/*
		num		 	 : 고유번호
		goodsName	 : 상품 이름
		goodsType 	 : 상품 타입 (PC, PS5, XBOX)
		goodsGenre 	 : 게임 장르
		price 		 : 가격
		discountRate : 할인시 할인률
		creCompany 	 : 제작사
		country 	 : 국내게임, 해외게임 여부
		remainCount  : 재고
		content	 	 : 상품 설명
		cutContent 	 : Main Page에 보일 상품 설명
		buyCount 	 : 구매량
		score 		 : 평점
		creDate 	 : 상품 등록 날짜
		fileName 	 : 이미지 파일 이름
		scoreCount 	 : 평점 참여 인원 카운트
	*/
	private int num;
	private String goodsName;
	private String goodsType;
	private String goodsGenre;
	private int price;
	private int discountRate;
	private String creCompany;
	private String country;
	private int remainCount;
	private String content;
	private String cutContent;
	private int buyCount;
	private int score;
	private Date creDate;
	private String fileName;
	private int scoreCount;
	
	/* Getter & Setter */
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}
	public String getGoodsGenre() {
		return goodsGenre;
	}
	public void setGoodsGenre(String goodsGenre) {
		this.goodsGenre = goodsGenre;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public String getCreCompany() {
		return creCompany;
	}
	public void setCreCompany(String creCompany) {
		this.creCompany = creCompany;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getRemainCount() {
		return remainCount;
	}
	public void setRemainCount(int remainCount) {
		this.remainCount = remainCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCutContent() {
		return cutContent;
	}
	public void setCutContent(String cutContent) {
		this.cutContent = cutContent;
	}
	public int getBuyCount() {
		return buyCount;
	}
	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public Date getCreDate() {
		return creDate;
	}
	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getScoreCount() {
		return scoreCount;
	}
	public void setScoreCount(int scoreCount) {
		this.scoreCount = scoreCount;
	}
}
