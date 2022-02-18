package com.portfolio.gms.imageBoard.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ImageBoardDto {

	// Field
	private String smallFileName;
	private String bigFileName;
	private int readCount;
	private Date regDate;
	
	// Getter & Setter
	public String getSmallFileName() {
		return smallFileName;
	}
	public void setSmallFileName(String smallFileName) {
		this.smallFileName = smallFileName;
	}
	public String getBigFileName() {
		return bigFileName;
	}
	public void setBigFileName(String bigFileName) {
		this.bigFileName = bigFileName;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
