package model;

import java.util.Date;

public class Booking {
	
	int bookingNum;
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
	Date cancelDate;
	int mileage_type;//마일리지 사용 여부
	Date bookingDate;
	
	public int getBookingNum() {
		return bookingNum;
	}
	public void setBookingNum(int bookingNum) {
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
				+ ", price=" + price + ", statusType=" + statusType + ", siteQuantity=" + siteQuantity + ", cancelDate="
				+ cancelDate + ", mileage_type=" + mileage_type + ", bookingDate=" + bookingDate + ", getBookingNum()="
				+ getBookingNum() + ", getUserId()=" + getUserId() + ", getSiteId()=" + getSiteId() + ", getSellerId()="
				+ getSellerId() + ", getChkIn()=" + getChkIn() + ", getChkOut()=" + getChkOut() + ", getName()="
				+ getName() + ", getPhone()=" + getPhone() + ", getPrice()=" + getPrice() + ", getStatusType()="
				+ getStatusType() + ", getSiteQuantity()=" + getSiteQuantity() + ", getCancelDate()=" + getCancelDate()
				+ ", getMileage_type()=" + getMileage_type() + ", getBookingDate()=" + getBookingDate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

}
