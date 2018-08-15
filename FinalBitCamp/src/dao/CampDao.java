package dao;

import java.util.List;
import java.util.Map;

import model.Camp;
import model.Picture;

public interface CampDao {
	public void insertCamp(Camp camp);
	public Camp selectOne(int campId);
	public List<Map<String, Object>> getStock(String chkIn);
	public List<Map<String, Object>> selectAll();
	public Picture selectPic(int campId);
}
