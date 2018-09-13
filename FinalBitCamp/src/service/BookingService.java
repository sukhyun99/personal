package service;

import java.util.HashMap;
import java.util.List;

import model.Booking;

public interface BookingService {
	
	public void newBooking(Booking booking);
	
	public List<Booking> getMemberBookingList(String userId);
	
	public List<Booking> getSellerBookingList(String sellerId);
	
	public List<HashMap<String, Object>> searchMyBooking(String userId);
	
	public HashMap<String, Object> getBookingListPage(HashMap<String, Object> params, int page);
	
	public int getStartPage(int page);
	
	public int getEndPage(int page);
	
	public int getLastPage(HashMap<String, Object> params);
	
	public int getSkip(int page);
	
	public List<HashMap<String, Object>> getMyBooking(String userId);
	
	public HashMap<String, Object> getPaymentResultInfo(HashMap<String, Object> params);

	public int chkBooking(HashMap<String, Object> params);
	
}
