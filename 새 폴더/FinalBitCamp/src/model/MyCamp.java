package model;

public class MyCamp {
	int 	num;
	String	userId;
	int 	siteId;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getSiteId() {
		return siteId;
	}
	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}
	
	@Override
	public String toString() {
		return "MyCamp [num=" + num + ", userId=" + userId + ", siteId=" + siteId + "]";
	}
	
	
	
	
}
