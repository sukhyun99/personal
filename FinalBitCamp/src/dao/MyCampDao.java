package dao;

import java.util.HashMap;
import java.util.List;

import model.MyCamp;

public interface MyCampDao {
	public void insertMyCamp(HashMap<String, Object> params);
	public List<MyCamp> selectMyCamp(String userId);
	public void deleteMyCamp(HashMap<String, Object> params);
}
