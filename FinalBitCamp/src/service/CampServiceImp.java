package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CampDao;
import model.Camp;
@Service
public class CampServiceImp implements CampService{

	@Autowired
	private CampDao cDao;
	
	@Override
	public void addCamp(Camp camp) {
		cDao.insertCamp(camp);
	}

	@Override
	public Camp getCamp(int campId) {		
		return cDao.selectOne(campId);
	}

	@Override
	public List<Map<String, Object>> campSiteSearch(int chkIn) {
		List<Map<String, Object>> stock = cDao.getStock(chkIn);
		List<Map<String, Object>> campSearchList = new ArrayList<>();
		for(int i=0; i<stock.size(); i++) {
			int campSiteStock = (int) stock.get(i).get("campSiteStock");
			long count = (long) stock.get(i).get("count(*)");			
			if(count<campSiteStock) {
				int siteId = (int) stock.get(i).get("siteId");				
				Map<String, Object> cssMap = cDao.campSiteSearch(siteId);
				campSearchList.add(cssMap);
			}			
		}
		return campSearchList;
	}

}
