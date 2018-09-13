package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BookingDao;
import model.Booking;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	private BookingDao bookingDao;

	@Override
	public void newBooking(Booking booking) { // 새로운 예약정보 저장
		// TODO Auto-generated method stub
		bookingDao.insertBooking(booking);
	}

	@Override
	public List<Booking> getMemberBookingList(String userid) { // 해당 회원 예약전체목록
		// TODO Auto-generated method stub
		List<Booking> bookingList = new ArrayList<Booking>();
		bookingList = bookingDao.selectMemberBookingList(userid);
		System.out.println(bookingList.toString());
		return bookingList;
	}

	@Override
	public List<Booking> getSellerBookingList(String sellerId) {
		// TODO Auto-generated method stub
		List<Booking> bookingList = new ArrayList<Booking>();
		bookingList = bookingDao.selectSellerBookingList(sellerId);
		return bookingList;
	}


	@Override									//나의예약 페이징처리
	public HashMap<String, Object> getBookingListPage(HashMap<String, Object> params, int page) {
		// TODO Auto-generated method stub

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
		System.out.println("뭘날리나:"+params.toString());
		result.put("bookingList", bookingDao.searchMyBooking(params));
		int size = bookingDao.getCount(params);
		System.out.println("사이즈:"+size);
		result.put("bookingCount", size);
		System.out.println("서비스에서부킹리스트:"+bookingDao.searchMyBooking(params));
		return result;
	}

	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		return (page - 1) / 5 * 5 + 1;
	}

	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		if (page % 5 != 0)
			return (page / 5 + 1) * 5;
		else
			return page;

	}

	@Override
	public int getLastPage(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return (bookingDao.getCount(params) - 1) / 5 + 1;
	}

	@Override
	public int getSkip(int page) {
		// TODO Auto-generated method stub
		return (page - 1) * 5;
	}

	@Override
	public List<HashMap<String, Object>> searchMyBooking(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HashMap<String, Object>> getMyBooking(String userId) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> bookingList = new ArrayList<HashMap<String, Object>>();
		bookingList = bookingDao.getMyBooking(userId);
		return bookingList;
	}

	@Override
	public HashMap<String, Object> getPaymentResultInfo(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		HashMap<String, Object> new_params = new HashMap<String, Object>();
		new_params = bookingDao.getPaymentResultInfo(params);
		return new_params;
	}

	@Override
	public int chkBooking(HashMap<String, Object> params) {
		return bookingDao.chkBooking(params);
	}

}
