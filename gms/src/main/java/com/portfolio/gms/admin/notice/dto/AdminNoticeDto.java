package com.portfolio.gms.admin.notice.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class AdminNoticeDto {

	// Field
		private int num;
		private String writer;
		private String subject;
		private Date regDate;
		private int readCount;
		private String content;
		private String cutContent;
		
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
		public Date getRegDate() {
			return regDate;
		}
		public void setRegDate(Date regDate) {
			this.regDate = regDate;
		}
		public int getReadCount() {
			return readCount;
		}
		public void setReadCount(int readCount) {
			this.readCount = readCount;
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
	
}
