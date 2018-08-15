package service;

import java.io.File;
import java.util.List;
import java.util.Map;

import model.Camp;

public interface CampService {
	public void addCamp(Camp camp);
	public Camp getCamp(int campId);
	public List<Map<String, Object>> campSiteSearch(int chkIn);
	public File attachFile(int num);
}
