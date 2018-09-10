package controller;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import model.Camp;
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
	
	@Autowired
	private MileageService mileageService;
	
	@Autowired
	private BookingService bookingService;
	
	@RequestMapping("memberGetOneSiteInfo.do") // 캠핑장상세페이지에서 예약 버튼 누르면 해당 사이트 정보 가지고 예약정보 입력폼_1 로 이동
	public ModelAndView getBookingForm(HttpSession session, @RequestParam int campId, @RequestParam String siteId,
			@RequestParam String chkIn, @RequestParam String chkOut, @RequestParam String campSiteStock, 
			@RequestParam String price, @RequestParam int type) {
		
			System.out.println("siteId: " + siteId + ", campId: " + campId + ", chkIn:"
				+ chkIn + ", chkOut:" + chkOut+", price"+price);
			
			System.out.println("재고:"+campSiteStock);
			
			int campId_integer = Integer.parseInt(siteId);
			String campSiteStockStr = campSiteStock.replace("자리", "");
			int camp_site_stock = Integer.parseInt(campSiteStockStr);
			
			ModelAndView mav = new ModelAndView();
		// 예약날짜와 요일로 각각 파싱함
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
				System.out.println("박수:"+diffDays);
				
				mav.addObject("nights", diffDays);
				mav.addObject("days", days);
	
				mav.addObject("chkIn", chkIn);
				mav.addObject("chkOut", chkOut);
			
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			String userId = (String)session.getAttribute("userId");
				
		// 예약 할 사이트 정보 가져오기
		String userId = (String)session.getAttribute("userId");
//		String userId = "monSon31starr";
		int resultPrice = (int)(Integer.parseInt(price)*diffDays);
		
		Camp camp = new Camp();
		camp = campService.getOneCamp(campId);
		Site site = new Site();

		site.setCampSiteName(siteService.getAsite(campId_integer).getCampSiteName());
		site.setSiteId(campId_integer);
		site.setCampPerson(siteService.getAsite(campId_integer).getCampPerson());
		site.setCampSiteStock(camp_site_stock);
		
		String campJson = new Gson().toJson(camp);
		String siteJson = new Gson().toJson(site);
		mav.addObject("campJson",campJson);
		mav.addObject("siteJson",siteJson);
		mav.addObject("type", type);
//		mav.addObject("sellerId", sellerId);
		int myMileage = mileageService.getMyMileage(userId).get(0).getMileage();
		mav.addObject("mileage", myMileage);
		mav.addObject("price", resultPrice);
		mav.addObject("originPrice", price);
		mav.addObject("campPolicy_cancel", 14);
		mav.setViewName("memberBookingForm_1");
		mav.addObject("campSiteStock", camp_site_stock);

		return mav;
	}

}
