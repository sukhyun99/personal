package model;

public class Picture {
	
	int num;
	int campId;
	String file;
	String content;
	
	
	@Override
	public String toString() {
		return "Picture [num=" + num + ", campId=" + campId + ", file=" + file + ", content=" + content + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
