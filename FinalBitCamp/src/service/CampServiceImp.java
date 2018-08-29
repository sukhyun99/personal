package service;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CampDao;
import model.Camp;
import model.Picture;
@Service
public class CampServiceImp implements CampService{

	@Autowired
	private CampDao cDao;
	
	@Override
	public void addCamp(Camp camp) {
		cDao.insertCamp(camp);
	}

	@Override
	public List<Map<String, Object>> getCamp(int campId) {
		return cDao.selectOne(campId);
	}

	@Override
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut, String search, String campPerson, int type, 
			int page, String order, int qty, String desc) {
		List<Integer> outOfStock = new ArrayList<Integer>();
		List<Map<String, Object>> campSearchList = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		try {
			Date in = sdf.parse(chkIn);
			Date out = sdf.parse(chkOut);
			long diff = (out.getTime()-in.getTime())/( 24*60*60*1000);
			Calendar cal = Calendar.getInstance();
			for(int q=0; q<diff; q++) {
				cal.setTime(in);
				cal.add(Calendar.DATE, q);
				List<Map<String, Object>> stock = cDao.getStock(sdf.format(cal.getTime()));
				for(int i=0; i<stock.size(); i++) {
					int campSiteStock = (int) stock.get(i).get("campSiteStock");
					long count = (long) stock.get(i).get("count(*)");
					if(campSiteStock==count) {
						outOfStock.add((Integer) stock.get(i).get("siteId"));					//재고가 남아있지 않은 사이트를 리스트에 추가한다.
					}
				}
			}
			HashMap<String, Object>params = new HashMap<>();
			params.put("campName", search);
			params.put("campAddr", search);
			params.put("campPerson", campPerson);
			params.put("type", type);
			params.put("skip", getSkip(page));
			params.put("qty", qty);
			params.put("order", order);
			params.put("desc", desc);
			campSearchList = cDao.selectSearch(params);
			for(int z=0; z<outOfStock.size(); z++) {
				int siteId = outOfStock.get(z);
				for(int p=0; p<campSearchList.size(); p++) {
					if(siteId==(int) campSearchList.get(p).get("siteId")) {
						campSearchList.remove(p);												//재고가 남이있지 않은 사이트를 검색리스트에서 제거한다.				
					}
				}
			}
//			for(int i=0; i<campSearchList.size(); i++) {
//				for(int p=i+1; p<campSearchList.size(); p++) {
//					if(campSearchList.get(i).get("campSiteName").equals(campSearchList.get(p).get("campSiteName"))&&campSearchList.get(i).get("campName").equals(campSearchList.get(p).get("campName"))){
//						campSearchList.remove(p);
//						p = p-1;
//					}
//				}
//			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return campSearchList;
	}

	@Override
	public File attachFile(int campId) {
		String path = "D:\\download\\bitCamp\\";
		List<Picture> p = cDao.selectPic(campId);
		String fileName = p.get(0).getFile();
		File attachFile = new File(path+fileName);
		return attachFile;
	}

	@Override
	public List<Map<String, Object>> getLocation() {
		return cDao.selectLocation();
	}

	@Override
	public int getSkip(int page) {
		return (page - 1) * 5;
	}

	@Override
	public Map<String, Object> getRate(int campId) {		
		return cDao.selectCampRate(campId);
	}

	@Override
	public List<Picture> getPic(int campId) {
		return cDao.selectPic(campId);
	}
}
