package service;

import java.util.List;

import model.Mileage;

public interface MileageService {
	
	public void insertMileage(Mileage mileage);
	
	public void updateMileage(Mileage mileage);
	
	public List<Mileage> getMyMileage(String userId);
	
	public int getUsableMileage(String userId);
	
	public void settingMileage(String userId, int mileage);
	
	public void addMileage(String userId, int mileage);
	
	public void checkMileage(String userId, int mileage);
	
	public int selectTotalMileage(String userId);
	
}
