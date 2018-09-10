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
import model.MyCamp;
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
	public List<Map<String, Object>> getCamp(HashMap<String, Object> params) {
		return cDao.selectOne(params);
	}

	@Override
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut, String search, String campPerson, int type, 
			int page, int qty) {
		List<Integer> outOfStock = new ArrayList<Integer>();
		List<Map<String, Object>> campSearchList = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		HashMap<String, Object>params = new HashMap<>();
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
			if(outOfStock.size()>0) {
				qty = qty + outOfStock.size();
			}
			params.put("campName", search);
			params.put("campAddr", search);
			params.put("campPerson", campPerson);
			params.put("type", type);
			params.put("skip", getSkip(page));
			params.put("qty", qty);
			campSearchList = cDao.selectSearch(params);
			for(int z=0; z<outOfStock.size(); z++) {
				int siteId = outOfStock.get(z);
				for(int p=0; p<campSearchList.size(); p++) {
					if(siteId==(int) campSearchList.get(p).get("siteId")) {
						campSearchList.remove(p);												//재고가 남이있지 않은 사이트를 검색리스트에서 제거한다.				
					}
				}
			}
//			campSearchList.add(stocks);
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

	@Override
	public List<Map<String, Object>> getStock(String chkIn, String chkOut, int campId) {
		List<Map<String, Object>> siteIdList = cDao.selectSiteIds(campId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		List<Map<String, Object>> stockList = new ArrayList<>();
		try {
			Date in = sdf.parse(chkIn);
			Date out = sdf.parse(chkOut);
			long diff = (out.getTime()-in.getTime())/( 24*60*60*1000);
			Calendar cal = Calendar.getInstance();
			for(int q=0; q<diff; q++) {
				cal.setTime(in);
				cal.add(Calendar.DATE, q);
				for(int i=0; i<siteIdList.size(); i++) {
					int siteId = (int) siteIdList.get(i).get("siteId");
					int stock = (int) siteIdList.get(i).get("campSiteStock");
					HashMap<String, Object> params = new HashMap<>();
					params.put("chkIn", sdf.format(cal.getTime()));
					params.put("siteId", siteId);
					Map<String, Object> stockMap = cDao.selectStock(params);
					if(stockMap!=null) {
						long count = (long) stockMap.get("count(*)");
						long campSiteStock = stock - count;
						params.put("campSiteStock", campSiteStock);
						stockList.add(params);
					}
					else {
						params.put("campSiteStock", stock);
						stockList.add(params);
					}
				}
			}
			if(stockList.size()>1) {
				for(int a=0;a<stockList.size();a++) {
					int siteIda = (int) stockList.get(a).get("siteId");
					for(int b=a+1;b<stockList.size();b++) {
						int siteIdb = (int) stockList.get(b).get("siteId");
						if(siteIda==siteIdb) {
							if(Integer.parseInt(String.valueOf(stockList.get(a).get("campSiteStock")))>=(Integer.parseInt(String.valueOf(stockList.get(b).get("campSiteStock"))))) {
								stockList.remove(a);
								a=a-1;
								b=stockList.size();
							}
							else {
								stockList.remove(b);
								a=a-1;
								b=stockList.size();
							}
						}
					}
				}
			}
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return stockList;
	}	

	@Override
	public List<Map<String, Object>> campDetailSearch(int campId, int type, String chkIn, String chkOut) {
		//재고가 없는 사이트를 파악하는 코드
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		List<Integer> outOfStock = new ArrayList<Integer>();
		HashMap<String, Object> params = new HashMap<>();
		params.put("campId", campId);
		params.put("type", type);
		List<Map<String, Object>> getCamp = cDao.selectOne(params);	//해당 캠프장의 정보를 가지고 옴
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
			//재고가 없는 사이트를 보여줄 결과값에서 제거하는 코드
			for(int i=0;i<getCamp.size();i++) {
				int siteId = ((int)getCamp.get(i).get("siteId"));
				for(int p=0;p<outOfStock.size();p++) {					//재고가 없는 사이트를 제거
					int noSiteId = outOfStock.get(p);
					if(siteId==noSiteId) {
						getCamp.remove(i);
						i=i-1;
					}
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getCamp;
	}

	@Override
	public List<Map<String, Object>> getReview(int campId) {
		return cDao.selectCampReview(campId);
	}

	@Override
	public Camp getOneCamp(int campId) {
		Camp camp = new Camp();
		camp = cDao.getOneCamp(campId);
		return camp;
	}
}
