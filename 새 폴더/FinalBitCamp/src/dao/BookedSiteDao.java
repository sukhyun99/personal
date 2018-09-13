package dao;

import java.util.List;

import model.BookedSite;

public interface BookedSiteDao {
	
	public void insertBookedSite(BookedSite bookedSite);

	public void deleteBookedSite(int num);

	public BookedSite selectBookedSite(int num);

	public List<BookedSite> selectBookedSiteAll();

}
