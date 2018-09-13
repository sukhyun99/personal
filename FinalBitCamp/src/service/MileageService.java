package service;

import java.util.HashMap;
import java.util.List;

import model.Mileage;

public interface MileageService {
	
	public void insertMileage(Mileage mileage);
	
	public void updateMileage(HashMap<String, Object>params);
	
	public int selectTotalMileage(String userId);
	
	public void minusMileage(int mileage);
	
	public void checkMileage(String userId, int mileage);
	
	public List<Mileage> getMyMileage(String userId);
	
	public void deleteMemberMileage(String userId);
	
	public int getUsableMileage(String userId);
	
	public void settingMileage(String userId, int mileage);
	
	public Mileage useOldMileage(String userId);

}
