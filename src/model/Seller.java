package model;

public class Seller {

	long businessNum;
	String businessName;
	int businessPhone;
	String businessAddr;
	String businessEmail;
	int businessPost;
	String sellerId;
	int joinDate;
	
	public long getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(long businessNum) {
		this.businessNum = businessNum;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public int getBusinessPhone() {
		return businessPhone;
	}
	public void setBusinessPhone(int businessPhone) {
		this.businessPhone = businessPhone;
	}
	public String getBusinessAddr() {
		return businessAddr;
	}
	public void setBusinessAddr(String businessAddr) {
		this.businessAddr = businessAddr;
	}
	public String getBusinessEmail() {
		return businessEmail;
	}
	public void setBusinessEmail(String businessEmail) {
		this.businessEmail = businessEmail;
	}
	public int getBusinessPost() {
		return businessPost;
	}
	public void setBusinessPost(int businessPost) {
		this.businessPost = businessPost;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public int getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(int joinDate) {
		this.joinDate = joinDate;
	}
	
	@Override
	public String toString() {
		return "Seller [businessNum=" + businessNum + ", businessName=" + businessName + ", businessPhone="
				+ businessPhone + ", businessAddr=" + businessAddr + ", businessEmail=" + businessEmail
				+ ", businessPost=" + businessPost + ", sellerId=" + sellerId + ", joinDate=" + joinDate + "]";
	}
}
