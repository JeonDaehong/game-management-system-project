package com.portfolio.gms.admin.notice.dto;

import org.springframework.stereotype.Component;

@Component
public class NoticeSuggestionDto {

	// Field
	private String memberId;
	private int noticeNum;
	
	// Getter & Setter
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
}
