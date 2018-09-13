package model;

import java.util.Date;

public class BoardTwo {
	
	int no;
	int Qtype;
	String title;
	String content;
	String writer;
	Date writeDate;  //작성시간 , 분 , 초 까지 나와야 함  (simpleDateFormat 사용)
	String answer;
	int type;
	int campId;
	
	
	@Override
	public String toString() {
		return "BoardTwo [no=" + no + ", Qtype=" + Qtype + ", title=" + title + ", content=" + content + ", writer="
				+ writer + ", writeDate=" + writeDate + ", answer=" + answer + ", type=" + type + ", campId=" + campId
				+ "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getQtype() {
		return Qtype;
	}
	public void setQtype(int qtype) {
		Qtype = qtype;
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
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
	}
	
	
	
}
