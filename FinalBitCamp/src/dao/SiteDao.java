package dao;

import model.Site;

public interface SiteDao {
	public void insertSite(Site site);
	public Site selectSite(int siteId);
}
