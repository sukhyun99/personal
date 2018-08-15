package controller;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class DataJson {
	
	@SerializedName("records")
	public List<Record> records;
	
	class Record{
		@SerializedName("야영(캠핑)장명")
		public String name;
		@SerializedName("위도")
		public String latitude;
		@SerializedName("경도")
		public String longitude;
		@SerializedName("소재지도로명주소")
		public String campAddr;
		@SerializedName("야영장전화번호")
		public String campPhone;
		@SerializedName("야영사이트수")
		public String siteNum;
		@SerializedName("편의시설")
		public String facility;		
		@SerializedName("기타부대시설")
		public String extraFacility;
		@SerializedName("이용시간")
		public String businessHour;
		@SerializedName("이용요금")
		public String price;
		@Override
		public String toString() {
			return "Record [name=" + name + ", latitude=" + latitude + ", longitude=" + longitude + ", campAddr="
					+ campAddr + ", campPhone=" + campPhone + ", siteNum=" + siteNum + ", facility=" + facility
					+ ", extraFacility=" + extraFacility + ", businessHour=" + businessHour + ", price=" + price + "]";
		}		
	}

}
