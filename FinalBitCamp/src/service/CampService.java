package service;

import java.io.File;
import java.util.List;
import java.util.Map;

import model.Camp;
import model.Picture;

public interface CampService {
	public void addCamp(Camp camp);
	public List<Map<String, Object>> getCamp(int campId);
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut, String search, String campPerson, int type, int page, String order, int qty, String desc);
	public File attachFile(int num);
	public List<Map<String, Object>> getLocation();
	public int getSkip(int page);
	public Map<String, Object> getRate(int campId);
	public List<Picture> getPic(int campId);
}
