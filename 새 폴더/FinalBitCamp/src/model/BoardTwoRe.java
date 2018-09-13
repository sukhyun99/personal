package model;

import java.util.Date;

public class BoardTwoRe {
	
	int no;
	String title;
	String content;
	String writer;
	Date writeDate;  //작성시간 , 분 , 초 까지 나와야 함  (simpleDateFormat 사용)
	int originNo;
	int groupOrd;
	int groupLayer;
	int parentNo; //boardTwo 테이블의 no 가 외래키
	
	
	@Override
	public String toString() {
		return "BoardTwoRe [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", writeDate=" + writeDate + ", originNo=" + originNo + ", groupOrd=" + groupOrd + ", groupLayer="
				+ groupLayer + ", parentNo=" + parentNo + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getOriginNo() {
		return originNo;
	}
	public void setOriginNo(int originNo) {
		this.originNo = originNo;
	}
	public int getGroupOrd() {
		return groupOrd;
	}
	public void setGroupOrd(int groupOrd) {
		this.groupOrd = groupOrd;
	}
	public int getGroupLayer() {
		return groupLayer;
	}
	public void setGroupLayer(int groupLayer) {
		this.groupLayer = groupLayer;
	}
	public int getParentNo() {
		return parentNo;
	}
	public void setParentNo(int parentNo) {
		this.parentNo = parentNo;
	}
	
}
