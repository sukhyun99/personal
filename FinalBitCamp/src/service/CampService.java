package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Camp;
import model.MyCamp;
import model.Picture;

public interface CampService {
	public void addCamp(Camp camp);
	public List<Map<String, Object>> getCamp(HashMap<String, Object> params);
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut, String search, String campPerson, int type, int page, int qty);
	public File attachFile(int num);
	public List<Map<String, Object>> getLocation();
	public int getSkip(int page);
	public Map<String, Object> getRate(int campId);
	public List<Map<String, Object>> getReview(int campId);
	public List<Picture> getPic(int campId);
	public List<Map<String, Object>> getStock(String chkIn, String chkOut, int campId);
	public List<Map<String, Object>> campDetailSearch(int campId, int type, String chkIn, String chkOut);
	public Camp getOneCamp(int campId);
}
