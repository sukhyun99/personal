package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BookedSiteDao;
import model.BookedSite;
import model.Booking;


@Service
public class BookedSiteServiceImpl implements BookedSiteService{
	
	@Autowired
	private BookedSiteDao bDao;

	@Override
	public Boolean checkBookedSite(String campId, String siteId, String startDate, String endDate) {
		// TODO Auto-generated method stub
		List<BookedSite> bookedList = bDao.selectBookedSiteAll();
		return null;
	}

	
	

}
