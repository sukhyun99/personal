package dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import model.Booking;

public interface BookingDao {
	
	public void insertBooking(Booking booking);

	public void updateBooking(Booking booking);

	public void selectBooking(int bookingNum);

	public void selectBookingAll(String userId, String sellerId, Date startDate, Date endDate);

	public void selectBookingNum(String userId, String sellerId, Date startDate, Date endDate, int statusType);

	public void selectBookingPrice(String userId, String sellerId, Date startDate, Date endDate, int statusType);
	
	public List<Booking> selectMemberBookingList(String userId);
	
	public List<Booking> selectSellerBookingList(String sellerId);
	
	public int getCount(HashMap<String, Object> params);
	
	public HashMap<String, Object> searchMyBooking(HashMap<String, Object> params);
	
	public List<HashMap<String, Object>> getMyBooking(String userId);
	
	public int chkBooking(HashMap<String, Object>params);
	
	public HashMap<String, Object> getPaymentResultInfo(HashMap<String, Object> params);	//예약 성공 후 보여 줄 데이터

}
