package dao;

import java.util.Date;
import java.util.List;

import model.Mileage;

public interface MileageDao {
	
	public void insertMileage(Mileage mileage);

	public void updateMileage(Mileage mileage);

	public void deleteMileage(String userId, Date startDate);

	public List<Mileage> selectMileage(String userId);

	public void selectMileageAll(String userId);
	
	public Mileage checkMileage(String userId);
	
	public int getUsableMileage(String userId);
	
	public List<Mileage> getMyMileage(String userId);
	
	public int selectTotalMileage(String userId);
	

}
