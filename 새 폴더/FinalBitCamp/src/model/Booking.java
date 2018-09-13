package model;

import java.util.Date;

public class Booking {
	String bookingNum;
	String userId;
	int siteId;
	String sellerId;
	int chkIn;
	int chkOut;
	String name;
	String phone;
	int price;
	int statusType;
	int siteQuantity;
	int guestQuantity;
	Date cancelDate;
	int mileage_type;//마일리지 사용 여부
	Date bookingDate;
	int campId;
	
	
	
	
	public int getCampId() {
		return campId;
	}
	public void setCampId(int campId) {
		this.campId = campId;
	}
	public String getBookingNum() {
		return bookingNum;
	}
	public void setBookingNum(String bookingNum) {
		this.bookingNum = bookingNum;
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
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public int getChkIn() {
		return chkIn;
	}
	public void setChkIn(int chkIn) {
		this.chkIn = chkIn;
	}
	public int getChkOut() {
		return chkOut;
	}
	public void setChkOut(int chkOut) {
		this.chkOut = chkOut;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStatusType() {
		return statusType;
	}
	public void setStatusType(int statusType) {
		this.statusType = statusType;
	}
	public int getSiteQuantity() {
		return siteQuantity;
	}
	public void setSiteQuantity(int siteQuantity) {
		this.siteQuantity = siteQuantity;
	}
	public int getGuestQuantity() {
		return guestQuantity;
	}
	public void setGuestQuantity(int guestQuantity) {
		this.guestQuantity = guestQuantity;
	}
	public Date getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}
	public int getMileage_type() {
		return mileage_type;
	}
	public void setMileage_type(int mileage_type) {
		this.mileage_type = mileage_type;
	}
	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	@Override
	public String toString() {
		return "Booking [bookingNum=" + bookingNum + ", userId=" + userId + ", siteId=" + siteId + ", sellerId="
				+ sellerId + ", chkIn=" + chkIn + ", chkOut=" + chkOut + ", name=" + name + ", phone=" + phone
				+ ", price=" + price + ", statusType=" + statusType + ", siteQuantity=" + siteQuantity
				+ ", guestQuantity=" + guestQuantity + ", cancelDate=" + cancelDate + ", mileage_type=" + mileage_type
				+ ", bookingDate=" + bookingDate + ", campId=" + campId + "]";
	}
	
	
	
	
	
	
	
}
