package service;

import java.util.List;

import model.Mileage;

public interface MileageService {
	
	public void insertMileage(Mileage mileage);
	
	public void updateMileage(Mileage mileage);
	
	public int selectTotalMileage(String userId);
	
	public void minusMileage(int mileage);
	
	public boolean chkeckMileage(String userId);
	
	public List<Mileage> getMyMileage(String userId);
	
	public void deleteMemberMileage(String userId);

}
