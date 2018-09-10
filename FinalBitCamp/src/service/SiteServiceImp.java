package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SiteDao;
import model.Site;
@Service
public class SiteServiceImp implements SiteService{
	
	@Autowired
	private SiteDao sDao;
	
	@Override
	public void addSite(Site site) {
		sDao.insertSite(site);
	}

	@Override
	public Site getAsite(int siteId) {
		Site site = sDao.selectSite(siteId);
		return site;
	}

}
