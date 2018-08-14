package model;

public class Camp {

	int campId;
	String campName;
	String sellerId;
	int campPhone;
	String campAddr;
	String campOwner;
	boolean status;
	int joinDate;
	int stopDate;
	double latitude;
	double longitude;
	
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
	}
	public String getCampName() {
		return campName;
	}
	public void setCampName(String campName) {
		this.campName = campName;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public int getCampPhone() {
		return campPhone;
	}
	public void setCampPhone(int campPhone) {
		this.campPhone = campPhone;
	}
	public String getCampAddr() {
		return campAddr;
	}
	public void setCampAddr(String campAddr) {
		this.campAddr = campAddr;
	}
	public String getCampOwner() {
		return campOwner;
	}
	public void setCampOwner(String campOwner) {
		this.campOwner = campOwner;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public int getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(int joinDate) {
		this.joinDate = joinDate;
	}
	public int getStopDate() {
		return stopDate;
	}
	public void setStopDate(int stopDate) {
		this.stopDate = stopDate;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	@Override
	public String toString() {
		return "Camp [campId=" + campId + ", campName=" + campName + ", sellerId=" + sellerId + ", campPhone="
				+ campPhone + ", campAddr=" + campAddr + ", campOwner=" + campOwner + ", status=" + status
				+ ", joinDate=" + joinDate + ", stopDate=" + stopDate + ", latitude=" + latitude + ", longitude="
				+ longitude + "]";
	}
}
