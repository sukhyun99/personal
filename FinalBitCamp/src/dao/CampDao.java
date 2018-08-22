package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Camp;
import model.Picture;

public interface CampDao {
	public void insertCamp(Camp camp);
	public Camp selectOne(int campId);
	public List<Map<String, Object>> getStock(String chkIn);
	public List<Map<String, Object>> selectSearch(HashMap<String, Object>params);
	public Picture selectPic(int campId);
	public List<Map<String, Object>> selectLocation();
}
