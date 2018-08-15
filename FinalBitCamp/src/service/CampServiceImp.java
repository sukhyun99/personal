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
	public Camp getCamp(int campId) {		
		return cDao.selectOne(campId);
	}

	@Override
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut) {
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
						outOfStock.add((Integer) stock.get(i).get("siteId"));
					}
				}
			}
			campSearchList = cDao.selectAll();
			for(int z=0; z<outOfStock.size(); z++) {
				int siteId = outOfStock.get(z);
				for(int p=0; p<campSearchList.size(); p++) {
					if(siteId==(int) campSearchList.get(p).get("siteId")) {
						campSearchList.remove(p);						
					}
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return campSearchList;
	}

	@Override
	public File attachFile(int campId) {
		String path = "D:\\download\\bitCamp\\";
		Picture p = cDao.selectPic(campId);
		String fileName = p.getFile();
		File attachFile = new File(path+fileName);
		return attachFile;
	}

}
