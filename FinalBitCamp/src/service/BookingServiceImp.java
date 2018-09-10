package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BookingDao;
import model.Booking;
@Service
public class BookingServiceImp implements BookingService{
	
	@Autowired
	private BookingDao bookingDao;

	@Override
	public void newBooking(Booking booking) { // 새로운 예약정보 저장
		bookingDao.insertBooking(booking);
	}

	@Override
	public List<Booking> getMemberBookingList(String userId) {// 해당 회원 예약전체목록
		List<Booking> bookingList = new ArrayList<Booking>();
		bookingList = bookingDao.selectMemberBookingList(userId);
		return bookingList;
	}

	@Override
	public List<Booking> getSellerBookingList(String sellerId) {
		List<Booking> bookingList = new ArrayList<Booking>();
		bookingList = bookingDao.selectSellerBookingList(sellerId);
		return bookingList;
	}

	@Override
	public List<HashMap<String, Object>> searchMyBooking(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap<String, Object> getBookingListPage(HashMap<String, Object> params, int page) {//나의예약 페이징처리
		HashMap<String, Object> result = new HashMap<String, Object>();
		int getEndPage = getEndPage(page);
		int getLastPage = getLastPage(params);
		if(getEndPage >= getLastPage)
			result.put("end", getLastPage(params));
		else
			result.put("end", getEndPage(page));
		result.put("current", page);
		result.put("start",getStartPage(page));
		result.put("last", getLastPage(params));
		result.put("skip", getSkip(page));
		result.put("qty", 5);
		result.put("bookingList", bookingDao.searchMyBooking(params));
		int size = bookingDao.getCount(params);
		result.put("bookingCount", size);
		return result;
	}

	@Override
	public int getStartPage(int page) {
		return (page - 1) / 5 * 5 + 1;
	}

	@Override
	public int getEndPage(int page) {
		if (page % 5 != 0)
			return (page / 5 + 1) * 5;
		else
			return page;
	}

	@Override
	public int getLastPage(HashMap<String, Object> params) {
		return (bookingDao.getCount(params) - 1) / 5 + 1;
	}

	@Override
	public int getSkip(int page) {
		return (page - 1) * 5;
	}

	@Override
	public List<HashMap<String, Object>> getMyBooking(String userId) {
		List<HashMap<String, Object>> bookingList = new ArrayList<HashMap<String, Object>>();
		bookingList = bookingDao.getMyBooking(userId);
		return bookingList;
	}

	@Override
	public int chkBooking(HashMap<String, Object> params) {
		return bookingDao.chkBooking(params);
	}

}
