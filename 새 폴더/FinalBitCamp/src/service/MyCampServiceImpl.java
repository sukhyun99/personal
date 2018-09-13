package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MyCampDao;
import model.MyCamp;


@Service
public class MyCampServiceImpl implements MyCampService{
	
	@Autowired
	private MyCampDao mcDao;

	@Override
	public void addMyCamp(int siteId, String userId) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("siteId", siteId);
		params.put("userId", userId);
		mcDao.insertMyCamp(params);
	}

	@Override
	public List<MyCamp> getMyCamp(String userId) {
		return mcDao.selectMyCamp(userId);
	}

	@Override
	public void deleteMyCamp(int siteId, String userId) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("siteId", siteId);
		params.put("userId", userId);
		mcDao.deleteMyCamp(params);
	}


}
