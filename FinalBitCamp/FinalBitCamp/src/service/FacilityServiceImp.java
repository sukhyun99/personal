package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FacilityDao;
import model.Facility;
@Service
public class FacilityServiceImp implements FacilityService{
	
	@Autowired
	private FacilityDao fDao;

	@Override
	public void addFacility(Facility facility) {
		fDao.insertFacility(facility);
	}

}
