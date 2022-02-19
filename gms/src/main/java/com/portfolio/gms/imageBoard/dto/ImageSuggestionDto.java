package com.portfolio.gms.imageBoard.dto;

import org.springframework.stereotype.Component;

@Component
public class ImageSuggestionDto {

	// Field
	private String memberId;
	private String fileName;
	
	// Getter & Setter
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
