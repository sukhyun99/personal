package dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import model.Mileage;

public interface MileageDao {
	
	public void insertMileage(Mileage mileage);

	public void updateMileage(HashMap<String, Object>params);

	public void deleteMileage(String userId, Date startDate);
	
	public void deleteMemberMileage(String userId);

	public List<Mileage> selectMileage(String userId);
	
	public int selectTotalMileage(String userId);

	public void selectMileageAll(String userId);
	
	public Mileage checkMileage(String userId);
	
	public int getUsableMileage(String userId);
	
	public Mileage selectOldMileage(String userId);

}
