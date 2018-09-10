package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
	public void updateMileage(Mileage mileage) {
		mDao.updateMileage(mileage);
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
	public boolean chkeckMileage(String userId) {
		List<Mileage> mileage = getMyMileage(userId);
		boolean isTrue = false;
		if (mileage != null) {
			if (mileage.get(0).getUserId() == userId)
				isTrue = true;
			else
				isTrue = false;
		} else
			isTrue = false;
		return isTrue;
	}

	@Override
	public int selectTotalMileage(String userId) {
		return mDao.selectTotalMileage(userId);
	}

	@Override
	public void deleteMemberMileage(String userId) {
		mDao.deleteMemberMileage(userId);
	}

}
