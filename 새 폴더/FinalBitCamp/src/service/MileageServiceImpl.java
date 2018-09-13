package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MileageDao;
import model.Mileage;

@Service
public class MileageServiceImpl implements MileageService{
	
	@Autowired
	private MileageDao mDao;
	
	@Override
	public void insertMileage(Mileage mileage) {
		// TODO Auto-generated method stub
		mDao.insertMileage(mileage);
	}

	@Override
	public void updateMileage(Mileage mileage) {
		// TODO Auto-generated method stub
		mDao.updateMileage(mileage);
	}

	@Override
	public List<Mileage> getMyMileage(String userId) {
		// TODO Auto-generated method stub
		List<Mileage> mileageList = new ArrayList<Mileage>();
		mileageList = mDao.selectMileage(userId);
		return mileageList;
	}

	@Override
	public void settingMileage(String userId, int mileage) {		//마일리지 차감
//		// TODO Auto-generated method stub
		//마일리지 차감
//		int origin_mileage = getUsableMileage(userId);
//		int minus_mileage = (origin_mileage-mileage);
//		m.setMileage(minus_mileage);
//		updateMileage(m);
	}


	public Date getEndDate(Date startDate)  {		//마일리지 endDate 구하는 메소드
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Calendar cal = Calendar.getInstance();
		
		String formDate = sdf.format(cal.getTime());
		System.out.println("getEndDate 연산 전 :"+formDate);
		
		cal.add(Calendar.YEAR, 5);
		String toDate = sdf.format(cal.getTime());
		System.out.println("getEndDate 5년후_1 :"+toDate);
		Date endDate = null;
		try {
			endDate = sdf.parse(toDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("getEndDate 5년후_2"+endDate);
		return endDate;
	}

	@Override
	public void checkMileage(String userId, int mileage) { // 해당 사용자의 마일리지 유무 체크 및 마일리지 차감
		// TODO Auto-generated method stub
		List<Mileage> mileageList = new ArrayList<>();
		mileageList = getMyMileage(userId);
		
		if(mileageList == null) {
			 
		}else {
			while(mileage == 0) {
				
			}
		}
		
//		if (getMyMileage(userId) == null) {									
//			Mileage new_mileage = new Mileage();
//			new_mileage.setUserId(userId);
//			new_mileage.setMileage(1000);
//			Date date = new Date();
//			new_mileage.setStartDate(date);
//			new_mileage.setEndDate(getEndDate(date));
//			insertMileage(new_mileage);
//		} else {											
//			int new_Mileage = (m.getMileage() + 1000);
//			m.setMileage(new_Mileage);
//			updateMileage(m);
//		}

	}


	@Override
	public int getUsableMileage(String userId) {	//사용 가능한 마일리지 체크 해서 가져오기
		// TODO Auto-generated method stub
//		List<Mileage> mileageList = new ArrayList<Mileage>();
//		mileageList = mDao.getUsableMileage(userId);
//		return mileageList;
		if(getMyMileage(userId) == null) {
			return 0;
		}else {
			int usableMileage = mDao.getUsableMileage(userId);
			return usableMileage;
		}
	}

	@Override
	public void addMileage(String userId, int mileage) {
		// TODO Auto-generated method stub
		Mileage m = new Mileage();
		m.setUserId(userId);
		m.setMileage(mileage);
		Date date = new Date();
		m.setStartDate(date);
		m.setEndDate(getEndDate(date));
		insertMileage(m);
	}


	@Override
	public int selectTotalMileage(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
}
