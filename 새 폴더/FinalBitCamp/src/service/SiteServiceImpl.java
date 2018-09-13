package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SiteDao;
import model.Site;

@Service
public class SiteServiceImpl implements SiteService{
	
	@Autowired
	private SiteDao sDao;

	@Override
	public Site getAsite(int siteId) {
		// TODO Auto-generated method stub
		Site site = sDao.selectSite(siteId);
		return site;
	} 
	
	@Override
	public void addSite(Site site) {
		sDao.insertSite(site);
	}
	
}
