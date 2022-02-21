package com.portfolio.gms.board.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardDto {

	// Field
	private int num;
	private String writer;
	private String subject;
	private String content;
	private String cutContent;
	private String fileName;
	private int readCount;
	private Date regDate;
	private int commentCount;
	
	// Getter & Setter
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
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
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
}
