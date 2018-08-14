package model;

public class Site {

	int siteId;
	int campId;
	String campSiteName;
	String content;
	int campSiteStock;
	int campPerson;
	int startBusyDate;
	int endBusyDate;
	int busyDayPrice;
	int busyWkndPrice;
	int dayPrice;
	int wkndPrice;
	
	public int getSiteId() {
		return siteId;
	}
	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
	}
	public String getCampSiteName() {
		return campSiteName;
	}
	public void setCampSiteName(String campSiteName) {
		this.campSiteName = campSiteName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCampSiteStock() {
		return campSiteStock;
	}
	public void setCampSiteStock(int campSiteStock) {
		this.campSiteStock = campSiteStock;
	}
	public int getCampPerson() {
		return campPerson;
	}
	public void setCampPerson(int campPerson) {
		this.campPerson = campPerson;
	}
	public int getStartBusyDate() {
		return startBusyDate;
	}
	public void setStartBusyDate(int startBusyDate) {
		this.startBusyDate = startBusyDate;
	}
	public int getEndBusyDate() {
		return endBusyDate;
	}
	public void setEndBusyDate(int endBusyDate) {
		this.endBusyDate = endBusyDate;
	}
	public int getBusyDayPrice() {
		return busyDayPrice;
	}
	public void setBusyDayPrice(int busyDayPrice) {
		this.busyDayPrice = busyDayPrice;
	}
	public int getBusyWkndPrice() {
		return busyWkndPrice;
	}
	public void setBusyWkndPrice(int busyWkndPrice) {
		this.busyWkndPrice = busyWkndPrice;
	}
	public int getDayPrice() {
		return dayPrice;
	}
	public void setDayPrice(int dayPrice) {
		this.dayPrice = dayPrice;
	}
	public int getWkndPrice() {
		return wkndPrice;
	}
	public void setWkndPrice(int wkndPrice) {
		this.wkndPrice = wkndPrice;
	}
	
	@Override
	public String toString() {
		return "Site [siteId=" + siteId + ", campId=" + campId + ", campSiteName=" + campSiteName + ", content="
				+ content + ", campSiteStock=" + campSiteStock + ", campPerson=" + campPerson + ", startBusyDate="
				+ startBusyDate + ", endBusyDate=" + endBusyDate + ", busyDayPrice=" + busyDayPrice + ", busyWkndPrice="
				+ busyWkndPrice + ", dayPrice=" + dayPrice + ", wkndPrice=" + wkndPrice + "]";
	}
}
