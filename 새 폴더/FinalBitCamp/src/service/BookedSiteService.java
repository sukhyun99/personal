package service;

import java.util.HashMap;

import model.Booking;

public interface BookedSiteService {
	
	public Boolean checkBookedSite(String campId, String siteId, String startDate, String endDate);
	
	
	
	
}
