package com.portfolio.gms.goods.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class GoodsReplyDto {
	
	/* Field */
	private int num;
	private int goodsNum;
	private String writer;
	private String content;
	private Date regDate;
	private int score;
	
	/* Getter & Setter */
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
