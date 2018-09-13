package model;

import java.util.Date;

public class SellerRequest {
	long businessNum;
	String businessName;
	String businessPhone;
	String businessAddr;
	String businessEmail;
	int businessPost;
	String sellerId;
	boolean grant;
	String result;
	
	
	@Override
	public String toString() {
		return "SellerRequest [businessNum=" + businessNum + ", businessName=" + businessName + ", businessPhone="
				+ businessPhone + ", businessAddr=" + businessAddr + ", businessEmail=" + businessEmail
				+ ", businessPost=" + businessPost + ", sellerId=" + sellerId + ", grant=" + grant + ", result="
				+ result + "]";
	}
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
	public String getBusinessPhone() {
		return businessPhone;
	}
	public void setBusinessPhone(String businessPhone) {
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
	public boolean isGrant() {
		return grant;
	}
	public void setGrant(boolean grant) {
		this.grant = grant;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	
		
}
