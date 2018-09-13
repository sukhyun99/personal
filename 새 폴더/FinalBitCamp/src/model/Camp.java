package model;

import java.util.Date;

public class Camp {
	int campId;
	String campName;
	String sellerId;
	String campPhone;
	String campAddr;
	String campOwner;
	boolean status;
	int joinDate;
	int stopDate;
	String policy_chkIn;	//캠핑장 체크인시간정책
	String policy_chkOut;	//캠핑장 체크아웃시간정책
	String policy_cancel;	//캠핑장 취소환불정책
	double latitude; //캠핑장 위치 <위도>
	double longitude;  //캠핑장 위치 <경도>
	
	
	@Override
	public String toString() {
		return "Camp [campId=" + campId + ", campName=" + campName + ", sellerId=" + sellerId + ", campPhone="
				+ campPhone + ", campAddr=" + campAddr + ", campOwner=" + campOwner + ", status=" + status
				+ ", joinDate=" + joinDate + ", stopDate=" + stopDate + ", policy_chkIn=" + policy_chkIn
				+ ", policy_chkOut=" + policy_chkOut + ", policy_cancel=" + policy_cancel + ", latitude=" + latitude
				+ ", longitude=" + longitude + "]";
	}
	
	
	


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


	public String getCampPhone() {
		return campPhone;
	}


	public void setCampPhone(String campPhone) {
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


	public String getPolicy_chkIn() {
		return policy_chkIn;
	}


	public void setPolicy_chkIn(String policy_chkIn) {
		this.policy_chkIn = policy_chkIn;
	}


	public String getPolicy_chkOut() {
		return policy_chkOut;
	}


	public void setPolicy_chkOut(String policy_chkOut) {
		this.policy_chkOut = policy_chkOut;
	}


	public String getPolicy_cancel() {
		return policy_cancel;
	}


	public void setPolicy_cancel(String policy_cancel) {
		this.policy_cancel = policy_cancel;
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
	
	
	
	
}
