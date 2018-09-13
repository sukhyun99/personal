package dao;

import java.util.List;

import model.Site;

public interface SiteDao {
	
	public void insertSite(Site site);

	public void updateSite(Site site);

	public void deleteSite(String siteId);

	public Site selectSite(int siteId);
	
	public List<Site> selectAllSites(String campId);
		
}
