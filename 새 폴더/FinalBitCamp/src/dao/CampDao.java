package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Camp;
import model.Picture;

public interface CampDao {

	public void updateCamp(Camp camp);

	public void deleteCamp(String campId);

	public void selectCampAll(Map<String, Object> map);

	public Camp getOneCamp(int campId);

	public void insertCamp(Camp camp);

	public List<Map<String, Object>> selectOne(HashMap<String, Object> params);

	public List<Map<String, Object>> getStock(String chkIn);

	public List<Map<String, Object>> selectSearch(HashMap<String, Object> params);

	public List<Picture> selectPic(int campId);

	public List<Map<String, Object>> selectLocation();

	public Map<String, Object> selectCampRate(int campId);

	public List<Map<String, Object>> selectCampReview(int campId);

	public List<Map<String, Object>> selectSiteIds(int campId);

	public Map<String, Object> selectStock(HashMap<String, Object> params);

}
