package service;

import java.util.List;

import model.MyCamp;

public interface MyCampService {

	public void addMyCamp(int siteId, String userId);
	public List<MyCamp> getMyCamp(String userId);
	public void deleteMyCamp(int siteId, String userId);
	
	
}
