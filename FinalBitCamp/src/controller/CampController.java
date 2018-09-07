package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.google.gson.Gson;

import model.MyCamp;
import service.CampService;
import service.MemberService;
import service.MyCampService;

@Controller
public class CampController {
	
	@Autowired
	private CampService cService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private MyCampService mcSerivce;
	
	@RequestMapping("main.do")
	public ModelAndView memberInfo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    String userId = (String) session.getAttribute("userId");
	    if (userId == null) {
	    	mav.setViewName("main");
	    } else {
	        mav.addObject("member", mService.selectMember(userId));
	        mav.setViewName("main");
	    }
	    return mav;
	}
//	public String main() {
//		return "main";		
//	}	
	
	@RequestMapping("download.do")
	public View download(int campId) {
		View view = new DownloadView(cService.attachFile(campId));
		return view;
	}
	
	@RequestMapping("memberGetOneSiteInfo.do")
	public String memberGetOneSiteInfo(@RequestParam(required=false) String chkIn, 
			@RequestParam(required=false) String chkOut, @RequestParam(required=false) int campId,
			@RequestParam(required=false) int siteId, @RequestParam(required=false) int type,
			@RequestParam(required=false) int price, @RequestParam(required=false) String campSiteStock) {
		return "main";
	}
	
	@RequestMapping("campDetailInfo.do")
	public ModelAndView campDetailInfo(@RequestParam(value="campId") int campId, @RequestParam(value="type") int type,
			@RequestParam(required=false) String chkIn, @RequestParam(required=false) String chkOut,
			HttpSession session) {
		HashMap<String, Object> params = new HashMap<>();
		List<Integer> myCampList =  new ArrayList<>();
		params.put("campId", campId);
		params.put("type", type);
		List<Map<String, Object>> getCamp = cService.getCamp(params);
		double rate = (double) cService.getRate(campId).get("avg(rate)");
		List<Map<String, Object>> getReview = cService.getReview(campId);
		getCamp.get(0).put("rate", rate);
		getCamp.get(0).put("type", type);
		getCamp.get(0).put("chkIn", chkIn);
		getCamp.get(0).put("chkOut", chkOut);
		if(session.getAttribute("userId")!=null) {
			String userId = (String) session.getAttribute("userId");
			getCamp.get(0).put("userId", userId);
			if(mcSerivce.getMyCamp(userId)!=null) {
				List<MyCamp> list = mcSerivce.getMyCamp(userId);
				for(int i=0; i<list.size(); i++) {
					int siteId = list.get(i).getSiteId();
					for(int p=0; p<getCamp.size(); p++) {
						int siteId_p = (int) getCamp.get(p).get("siteId");
						if(siteId==siteId_p) {
							myCampList.add(siteId);
						}
					}
				}
			}
		}
		Gson gson = new Gson();
		String campDetail = gson.toJson(getCamp);
		ModelAndView mav = new ModelAndView();
		mav.addObject("campDetail", campDetail);
		mav.setViewName("campDetailInfo");
		List<Map<String, Object>> stockList = cService.getStock(chkIn, chkOut, campId);
		String stList = gson.toJson(stockList);
		mav.addObject("stockList", stList);
		mav.setViewName("campDetailInfo");
		String campReview = gson.toJson(getReview);
		mav.addObject("campReview", campReview);
		mav.setViewName("campDetailInfo");
		return mav;
	}
	
	@RequestMapping("campDetailSearch.do")
	public ModelAndView campDetailSearch(@RequestParam(value="chkIn") String chkIn, @RequestParam(value="chkOut") String chkOut,
			@RequestParam(value="campId") int campId, @RequestParam(value="type") int type,
			@RequestParam(value="rate") double rate, HttpSession session) {
		List<Map<String, Object>> campDetailSearch = cService.campDetailSearch(campId, type, chkIn, chkOut);
		List<Map<String, Object>> stockList = cService.getStock(chkIn, chkOut, campId);
		List<Map<String, Object>> getReview = cService.getReview(campId);
		List<Integer> myCampList =  new ArrayList<>();
		ModelAndView mav = new ModelAndView();
		Gson gson = new Gson();
		campDetailSearch.get(0).put("rate", rate);
		campDetailSearch.get(0).put("type", type);
		campDetailSearch.get(0).put("chkIn", chkIn);
		campDetailSearch.get(0).put("chkOut", chkOut);
		if(session.getAttribute("userId")!=null) {
			String userId = (String) session.getAttribute("userId");
			campDetailSearch.get(0).put("userId", userId);
			if(mcSerivce.getMyCamp(userId)!=null) {
				List<MyCamp> list = mcSerivce.getMyCamp(userId);
				for(int i=0; i<list.size(); i++) {
					int siteId = list.get(i).getSiteId();
					for(int p=0; p<campDetailSearch.size(); p++) {
						int siteId_p = (int) campDetailSearch.get(p).get("siteId");
						if(siteId==siteId_p) {
							myCampList.add(siteId);
						}
					}
				}
			}
		}
		String campDetail = gson.toJson(campDetailSearch);
		String stList = gson.toJson(stockList);
		String campReview = gson.toJson(getReview);
		mav.addObject("campDetail", campDetail);
		mav.setViewName("campDetailInfo");
		mav.addObject("stockList", stList);
		mav.setViewName("campDetailInfo");
		mav.addObject("campReview", campReview);
		mav.setViewName("campDetailInfo");
		return mav;
	}
	
	@RequestMapping("campSiteSearch.do")
	public ModelAndView campSiteSearch(@RequestParam(required=false) String chkIn, 
			@RequestParam(required=false) String chkinDay, @RequestParam(required=false) String chkOut,
			@RequestParam(required=false) String search, @RequestParam(required=false) String campPerson,
			@RequestParam(defaultValue = "5") int qty, @RequestParam(defaultValue = "1") int page, 
			@RequestParam(defaultValue = "0") int type, HttpServletResponse resp,
			HttpSession session) {
		if(page>1) {
			List<Integer> myCampList =  new ArrayList<>();
			resp.setContentType("application/json; charset=utf8");
			List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type, page, qty);
			for(int i=0; i<campSearchList.size(); i++) {
				double rate = (double) cService.getRate((int) campSearchList.get(i).get("campId")).get("avg(rate)");
				campSearchList.get(i).put("rate", rate);
			}
			if(session.getAttribute("userId")!=null) {
				String userId = (String) session.getAttribute("userId");
				campSearchList.get(0).put("userId", userId);
				if(mcSerivce.getMyCamp(userId)!=null) {
					List<MyCamp> list = mcSerivce.getMyCamp(userId);
					for(int i=0; i<list.size(); i++) {
						int siteId = list.get(i).getSiteId();
						for(int p=0; p<campSearchList.size(); p++) {
							int siteId_p = (int) campSearchList.get(p).get("siteId");
							if(siteId==siteId_p) {
								myCampList.add(siteId);
							}
						}
					}
					campSearchList.get(0).put("mcl", myCampList);
				}
			}
			Gson gson = new Gson();
			String csl = gson.toJson(campSearchList);
			try {
				resp.getWriter().print(csl);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			List<Integer> myCampList =  new ArrayList<>();
			int chkin = Integer.parseInt(chkIn);
			if(type==0) {
				if(chkin<20180827&chkin>20180722) {
					if(chkinDay.equals("Fri")||chkinDay.equals("Sat")) {
						type = 0;		//성수기 주말 요금
					}
					else {
						type = 1;		//성수기 평일 요금
					}
				}
				else {
					if(chkinDay.equals("Fri")||chkinDay.equals("Sat")) {
						type = 2;		//비수기 주말 요금
					}
					else {
						type = 3;		//비수기 평일 요금
					}
				}
			}			
			int person = Integer.parseInt(campPerson);
			if(person<4) {
				campPerson = "4";
			}
			else if(person==5) {
				campPerson = "6";
			}
			else if(person==7) {
				campPerson = "8";
			}
			else if(person==9) {
				campPerson = "10";
			}
			List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type, page, qty);
			for(int i=0; i<campSearchList.size(); i++) {
				double rate = (double) cService.getRate((int) campSearchList.get(i).get("campId")).get("avg(rate)");
				campSearchList.get(i).put("rate", rate);
			}
			if(session.getAttribute("userId")!=null) {
				String userId = (String) session.getAttribute("userId");
				campSearchList.get(0).put("userId", userId);
				if(mcSerivce.getMyCamp(userId)!=null) {
					List<MyCamp> list = mcSerivce.getMyCamp(userId);
					for(int i=0; i<list.size(); i++) {
						int siteId = list.get(i).getSiteId();
						for(int p=0; p<campSearchList.size(); p++) {
							int siteId_p = (int) campSearchList.get(p).get("siteId");
							if(siteId==siteId_p) {
								myCampList.add(siteId);
							}
						}
					}
				}
			}
//			HashMap<String, Object> stocks = (HashMap<String, Object>) campSearchList.get(campSearchList.size()-1);
//			campSearchList.remove(campSearchList.size()-1);
//			System.out.println(stocks.get("1"));
			HashMap<String, Object> searchCon = new HashMap<>();
			searchCon.put("search", search);
			searchCon.put("chkIn", chkin);
			searchCon.put("chkOut", chkOut);
			searchCon.put("campPerson", campPerson);
			searchCon.put("chkinDay", chkinDay);
			searchCon.put("page", page);
			searchCon.put("type", type);
			ModelAndView mav = new ModelAndView();
			Gson gson = new Gson();
			String csl = gson.toJson(campSearchList);
			String sc = gson.toJson(searchCon);
			String mcl = gson.toJson(myCampList);
			mav.addObject("csl", csl);
			mav.setViewName("campSiteSearchResult");
			mav.addObject("sc", sc);
			mav.setViewName("campSiteSearchResult");
			mav.addObject("mcl", mcl);
			mav.setViewName("campSiteSearchResult");
			return mav;
		}
		return null;
	}
}
