package model;

public class CampReview {

	int no;
	double rate;
	String title;
	String content;
	String writer;
	int writeDate;
	int campId;
	int originNo;
	int groupOrd;
	int groupLayer;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
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
	public int getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(int writeDate) {
		this.writeDate = writeDate;
	}
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
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
	
	@Override
	public String toString() {
		return "CampReview [no=" + no + ", rate=" + rate + ", title=" + title + ", content=" + content + ", writer="
				+ writer + ", writeDate=" + writeDate + ", campId=" + campId + ", originNo=" + originNo + ", groupOrd="
				+ groupOrd + ", groupLayer=" + groupLayer + "]";
	}
}
