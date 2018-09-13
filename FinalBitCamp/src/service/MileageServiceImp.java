package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MileageDao;
import model.Mileage;

@Service
public class MileageServiceImp implements MileageService{
	
	@Autowired
	private MileageDao mDao;

	@Override
	public void insertMileage(Mileage mileage) {
		mDao.insertMileage(mileage);
	}

	@Override
	public void updateMileage(HashMap<String, Object>params) {
		mDao.updateMileage(params);
	}

	@Override
	public List<Mileage> getMyMileage(String userId) {
		return mDao.selectMileage(userId);
	}

	@Override
	public void minusMileage(int mileage) {
		Date d = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		String startDate = sdf.format(d);
//		int result = (mileage - 500);
//		Mileage m = new Mileage();
//		m.setMileage(result);
//		m.setStartDate(new Date());
//		try {
//			m.setEndDate(getEndDate(startDate));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		mDao.updateMileage(m);
	}
	
	public Date getEndDate(String startDate) throws ParseException {		//마일리지 endDate 구하는 메소드
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		
		String formDate = sdf.format(cal.getTime());
		System.out.println("연산 전 :"+formDate);
		
		cal.add(Calendar.YEAR, 5);
		String toDate = sdf.format(cal.getTime());
		System.out.println("5년후 :"+toDate);
		Date endDate = sdf.parse(toDate);
		return endDate;
	}

	@Override
	public int selectTotalMileage(String userId) {
		return mDao.selectTotalMileage(userId);
	}

	@Override
	public void deleteMemberMileage(String userId) {
		mDao.deleteMemberMileage(userId);
	}

	@Override
	public int getUsableMileage(String userId) {			//사용 가능한 마일리지 체크 해서 가져오기
		System.out.println(getMyMileage(userId).size());
		if(getMyMileage(userId).size() == 0) {
			return 0;
		}else {
			int usableMileage = mDao.getUsableMileage(userId);
			return usableMileage;
		}
	}

	@Override
	public void checkMileage(String userId, int mileage) {
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
	public void settingMileage(String userId, int mileage) {
//		// TODO Auto-generated method stub
		//마일리지 차감
//		int origin_mileage = getUsableMileage(userId);
//		int minus_mileage = (origin_mileage-mileage);
//		m.setMileage(minus_mileage);
//		updateMileage(m);
	}

	@Override
	public Mileage useOldMileage(String userId) {
		return mDao.selectOldMileage(userId);
	}

}
