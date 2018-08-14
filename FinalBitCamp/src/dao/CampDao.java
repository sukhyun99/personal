package dao;

import java.util.List;
import java.util.Map;

import model.Camp;

public interface CampDao {
	public void insertCamp(Camp camp);
	public Camp selectOne(int campId);
	public List<Map<String, Object>> getStock(int chkIn);
	public Map<String, Object> campSiteSearch(int siteId);
}
