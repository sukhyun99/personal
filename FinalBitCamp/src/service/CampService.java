package service;

import java.io.File;
import java.util.List;
import java.util.Map;

import model.Camp;

public interface CampService {
	public void addCamp(Camp camp);
	public Camp getCamp(int campId);
	public List<Map<String, Object>> campSiteSearch(String chkIn, String chkOut, String search, String campPerson, int type);
	public File attachFile(int num);
	public List<Map<String, Object>> getLocation();
}
