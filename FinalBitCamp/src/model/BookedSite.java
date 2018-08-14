package model;

public class BookedSite {

	int num;
	int siteId;
	String sellerId;
	int bookedSiteNum;
	int stayDay;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getSiteId() {
		return siteId;
	}
	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public int getBookedSiteNum() {
		return bookedSiteNum;
	}
	public void setBookedSiteNum(int bookedSiteNum) {
		this.bookedSiteNum = bookedSiteNum;
	}
	public int getStayDay() {
		return stayDay;
	}
	public void setStayDay(int stayDay) {
		this.stayDay = stayDay;
	}
	
	@Override
	public String toString() {
		return "BookedSite [num=" + num + ", siteId=" + siteId + ", sellerId=" + sellerId + ", bookedSiteNum="
				+ bookedSiteNum + ", stayDay=" + stayDay + "]";
	}	
}
