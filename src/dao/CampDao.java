package dao;

import model.Camp;

public interface CampDao {
	public void insertCamp(Camp camp);
	public Camp selectOne(int campId);
}
