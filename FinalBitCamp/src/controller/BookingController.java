package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import model.Booking;
import model.Camp;
import model.Mileage;
import model.Site;
import service.BookingService;
import service.CampService;
import service.MileageService;
import service.SiteService;

@Controller
public class BookingController {
	
	@Autowired
	private CampService campService;

	@Autowired
	private SiteService siteService;
//	
	@Autowired
	private MileageService mileageService;
	
	@Autowired
	private BookingService bookingService;
	
	@RequestMapping("memberMyBooking.do")
	public String memberMyBooking() {
		return "memberMyBooking";
	}

	@RequestMapping("memberBookCampSite.do")
	public ModelAndView newBooking(HttpSession session, @RequestParam int campId, @RequestParam int mileage,
			@RequestParam int siteId, @RequestParam String name, @RequestParam int phone, 
			@RequestParam int campPerson, @RequestParam String chkIn, @RequestParam int price,@RequestParam String chkOut,
			@RequestParam String mileage_type, @RequestParam int guest_quantity, @RequestParam int site_quantity, 
			@RequestParam int campSiteStock, @RequestParam int type, @RequestParam int total_price, @RequestParam(required=false) String nights,
			@RequestParam(required=false) String days) {
				 
		ModelAndView mav = new ModelAndView();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		
		System.out.println("사이트아이디 :"+siteId+", 예약자명 :"+name+", 폰번호 :"+phone+", 이름:"+name+
				", 체크인날짜 :"+chkIn+", 체크아웃날짜:"+chkOut+", 가격:"+price+", 마일리지여부:"+mileage_type+
				", 사이트수량:"+site_quantity+",인원수:"+guest_quantity+",토탈가격:"+total_price+"박수:"+nights+"일수:"+days);
		

		String userId = (String) session.getAttribute("userId");
		
		//체크인 체크아웃 날짜는 Date 형식으로 변환
		
		Date chkInDate = null;
		Date chkOutDate = null;
		try {
			chkInDate = sdf.parse(chkIn);
			chkOutDate = sdf.parse(chkOut);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//가져온 예약자 정보 담아서 이동
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("campName", campService.getOneCamp(campId).getCampName());
		params.put("campSiteName", siteService.getAsite(siteId).getCampSiteName());
		params.put("siteId", siteId);
		params.put("campId", campId);
		params.put("mileage", mileage_type);
		params.put("useMile", mileage);
		params.put("chkIn", chkIn);
		params.put("chkOut", chkOut);
		params.put("sitePrice", price);
		params.put("name", name);
		params.put("phone", phone);
		params.put("guest_quantity", guest_quantity);
		params.put("site_quantity", site_quantity);
		params.put("campSiteStock", campSiteStock);
		params.put("total_price", total_price);
		params.put("type", type);
		params.put("mileage_type", mileage_type);
		params.put("nights", nights);
		params.put("days", days);
		
		String json = new Gson().toJson(params);
		
		// 결제페이지로 이동

		mav.addObject("bookingInfo", json);
		mav.setViewName("payment");


		return mav;
		
	}

	@RequestMapping("memberPaymentSuccess.do")					//결제 성공 후
	public ModelAndView pay(HttpSession session, @RequestParam int campId, @RequestParam int siteId, @RequestParam int mileage_type,
			@RequestParam String chkIn, @RequestParam String chkOut, @RequestParam String name, @RequestParam String payment_method,
			@RequestParam String campSiteName, @RequestParam int guest_quantity, @RequestParam int sitePrice,
			@RequestParam int mileage, @RequestParam String phone, @RequestParam int total_price, @RequestParam String campName,
			@RequestParam int site_quantity, @RequestParam int campSiteStock, @RequestParam int type,@RequestParam(required=false) String nights,
			@RequestParam(required=false) String days, @RequestParam int useMile) {
			
		
		System.out.println("결제성공 후: "+"캠프아이디:"+campId+"사이트아이디:"+siteId+"마일리지타입:"+mileage_type+"체크인:"+chkIn+
				"체크아웃:"+chkOut+"이름:"+name+"지불방식:"+payment_method+"캠프사이트이름:"+campSiteName+"인원수:"+guest_quantity+
				"사이트가격:"+site_quantity+"사이트재고:"+campSiteStock+"마일리지:"+mileage+"폰번호:"+phone+"토탈가격:"+total_price+
				"캠프장이름:"+campName+"타입:"+type+"박수:"+nights+"일수:"+days);

		//결제완료 창에 띄울 정보 가져가기
		ModelAndView mav = new ModelAndView();
		
		int chkIn_ = Integer.parseInt(chkIn);
		int chkOut_ = Integer.parseInt(chkOut);
		
//		String userId = "monSon31starr";
//		String userId = "jin";
		String userId = (String)session.getAttribute("userId");
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String sample = sdf.format(date);
		int random = (int)(Math.random()*100)+100;
		String bookingNum = sample+random;
		System.out.println("예약번호생성"+bookingNum);
		
		//마일리지 차감
		int oldMile = mileageService.useOldMileage(userId).getMileage();		//가장 오래된 마일리지 값을 불러옴
		while(useMile!=0) {
			if(useMile<=oldMile) {
				oldMile = oldMile - useMile;
				useMile = 0;
				HashMap<String, Object>params = new HashMap<>();
				params.put("mileage", oldMile);
				params.put("userId", userId);
				mileageService.updateMileage(params);						//사용하고 남은 값을 업데이트
				}
				else {
					useMile = useMile - oldMile;
					mileageService.deleteMemberMileage(userId);			//마일리지를 사용하고 디비에서 삭제
					oldMile = mileageService.useOldMileage(userId).getMileage();		//다시 값을 가져온다.
				}
				}
				
		//마일리지 적립
		int saveMile = (int) ((total_price+useMile) * 0.03);
		System.out.println("적립금은 " + saveMile);
		Mileage m = new Mileage();
		m.setMileage(saveMile);
		m.setUserId(userId);
		m.setStartDate(new Date());
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 6);
		System.out.println(cal.getTime());
		m.setEndDate(cal.getTime());
		mileageService.insertMileage(m);
				
		//예약정보 insert.
		Booking booking = new Booking();
		booking.setBookingNum(bookingNum);
		booking.setBookingDate(date);
		booking.setChkIn(chkIn_); 
		booking.setCampId(campId);
		booking.setChkOut(chkOut_);
		booking.setMileage_type(mileage_type);
		booking.setName(name);
		booking.setPhone(phone);
		booking.setPrice(total_price);
		booking.setSellerId(campService.getOneCamp(campId).getSellerId());
		booking.setSiteId(siteId);
		booking.setSiteQuantity(site_quantity);
		booking.setStatusType(1);
		booking.setUserId(userId);
		booking.setCancelDate(null);
		booking.setGuestQuantity(guest_quantity);
		bookingService.newBooking(booking);
		
		//마일리지 차감 및 적립
//		if (mileage_type == 1) { // type=1 은 마일리지 사용함
//			mileageService.settingMileage(userId, mileage);
//		} else {
//			mileageService.checkMileage(userId, mileage);
//		}
		
		String nights_days = nights+"박 "+days+"일";

		//결제 후 주문정보 보여 줄 데이터 
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("bookingNum", bookingNum);
		params.put("campId", campId);
		params.put("siteId", siteId);
		String json = new Gson().toJson(bookingService.getPaymentResultInfo(params));
		System.out.println(json.toString());
		mav.addObject("bookingInfo",json);
		mav.addObject("nights_days",nights_days);
		mav.addObject("mileage", mileage);
		mav.addObject("payment_method", payment_method);

		
		mav.setViewName("memberPaymentResult");
		
		return mav;
	}
	
	
	public void updateBooking(String userId, String siteId, String name, String sellerId, int phone, int price,
			int statusTyep, int bookingNum, Date chkIn, Date chkOut, boolean status) {

	}

	public void cancelBooking(int bookingNum) {

	}

	public void getBookingInfo(int bookingNum) {

	}
	
	
	@RequestMapping("sellerBookingState.do")
	public ModelAndView getSellerBooking(HttpSession session) {			//판매자 예약현황
		ModelAndView mav = new ModelAndView();
		String sellerId = (String)session.getAttribute("sellerId");
//		String sellerId = "jin";
		
		//판매자 예약관리 페이지에서 가져가야 할 정보들 
		//1.판매자아이디
		mav.addObject("sellerId", sellerId);
		//2.예약정보
		List<Booking> bookingList = new ArrayList<Booking>();
		bookingList = bookingService.getSellerBookingList(sellerId);
		String json = new Gson().toJson(bookingList);
		
		mav.addObject("bookingList", json);
		mav.setViewName("sellerBookingState");
		return mav;
	}
	
	public void getBookingList(String userId, String sellerId, Date startDate, Date endDate) {

	}

	public void getBookingNum(Date startDate, Date endDate, int statusType, String sellerId) {

	}
	
	public void getBookingPrice(Date startDate, Date endDate, int statusType, String sellerId) {

	}

	public void getReturnNum(Date startDate, Date endDate, int statusType, String sellerId) {

	}

	public void getReturnPrice(Date startDate, Date endDate, int statusType, String sellerId) {

	}

	@RequestMapping("memberGetOneSiteInfo.do") // 캠핑장상세페이지에서 예약 버튼 누르면 해당 사이트 정보 가지고 예약정보 입력폼_1 로 이동
	public ModelAndView getBookingForm(HttpSession session, @RequestParam int campId, @RequestParam String siteId,
			@RequestParam String chkIn, @RequestParam String chkOut, @RequestParam String campSiteStock,
			@RequestParam String price, @RequestParam int type) {
		
			System.out.println("siteId: " + siteId + ", campId: " + campId + ", chkIn:"
				+ chkIn + ", chkOut:" + chkOut+", price"+price);
			
			ModelAndView mav = new ModelAndView();
			String userId = (String)session.getAttribute("userId");
			
				int campId_integer = Integer.parseInt(siteId);
				String campSiteStockStr = campSiteStock.replace("자리", "");
				int camp_site_stock = Integer.parseInt(campSiteStockStr);
				
				
				//예약 날짜를 박수와 일수로 변경
				int days = 0;
				long diffDays = 0;
				try {
					SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
					Date startDate = formatter.parse(chkIn);
					Date endDate = formatter.parse(chkOut);
					// 시간차이를 시간,분,초를 곱한 값으로 나누면 하루 단위가 나옴s
					long diff = endDate.getTime() - startDate.getTime();
					diffDays = diff / (24 * 60 * 60 * 1000);
		
					days = ((int)diffDays)+1;
					
					mav.addObject("nights", diffDays);
					mav.addObject("days", days);
		
					mav.addObject("chkIn", chkIn);
					mav.addObject("chkOut", chkOut);
				
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
					
			// 예약 할 사이트 정보 가져오기		
//			String userId = "monSon31starr";
//			String userId = "jin";
			int resultPrice = (int)(Integer.parseInt(price)*diffDays);
			
			Camp camp = new Camp();
			camp = campService.getOneCamp(campId);
			Site site = new Site();
			
			site.setCampSiteName(siteService.getAsite(campId_integer).getCampSiteName());
			site.setSiteId(campId_integer);
			site.setCampPerson(siteService.getAsite(campId_integer).getCampPerson());
			System.out.println("캠프펄슨:"+siteService.getAsite(campId_integer).getCampPerson());
			site.setCampSiteStock(camp_site_stock);
			
			String campJson = new Gson().toJson(camp);
			String siteJson = new Gson().toJson(site);
			mav.addObject("campJson",campJson);
			mav.addObject("siteJson",siteJson);
			mav.addObject("type", type);
			
			//사용 가능한 마일리지 합계 가져옴
			int myMileage = mileageService.getUsableMileage(userId);
			
			//가져갈 데이터 챙김
			mav.addObject("userId", userId);
			mav.addObject("mileage", myMileage);
			mav.addObject("price", resultPrice);
			mav.addObject("originPrice", price);
			mav.addObject("campPolicy_cancel", 14);
			mav.addObject("campSiteStock", camp_site_stock);
			mav.setViewName("memberBookingForm_1");
				
	

		return mav;
	}
	
	
	

}
