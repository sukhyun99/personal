package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.google.gson.Gson;

import service.CampService;

@Controller
public class CampController {
	
	@Autowired
	private CampService cService;
	
	@RequestMapping("main.do")
	public String main() {
		return "main";		
	}	
	
	@RequestMapping("download.do")
	public View download(int campId) {
		View view = new DownloadView(cService.attachFile(campId));
		return view;
	}
	
	@RequestMapping("getSort.do")
	public void getSort(HttpServletResponse resp, HttpServletRequest req) {
		String json = req.getParameter("json");
		System.out.println(json.toString());
	}
	
//	@RequestMapping("getRate.do")
//	public void getRate(@RequestParam(required=false) String chkIn, 
//			@RequestParam(required=false) String chkinDay, @RequestParam(required=false) String chkOut,
//			@RequestParam(required=false) String search, @RequestParam(required=false) String campPerson,
//			@RequestParam(required=false) String order, @RequestParam(defaultValue = "5") int qty,
//			@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "0") int type, 
//			@RequestParam(defaultValue = "desc") String desc, HttpServletResponse resp) {
//		resp.setContentType("application/json; charset=utf8");
//		List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type, page, order, qty, desc);
//		List<Double> campRateList = new ArrayList<>();
//		for(int i=0; i<campSearchList.size(); i++) {
//			double rate = (double) cService.getRate((int) campSearchList.get(i).get("campId")).get("avg(rate)");
//			campRateList.add(rate);
//		}
//		System.out.println(campRateList.toString());
//		Gson gson = new Gson();
//		String crl = gson.toJson(campRateList);
//		try {
//			resp.getWriter().print(crl);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
	@RequestMapping("campSiteSearch.do")
	public ModelAndView campSiteSearch(@RequestParam(required=false) String chkIn, 
			@RequestParam(required=false) String chkinDay, @RequestParam(required=false) String chkOut,
			@RequestParam(required=false) String search, @RequestParam(required=false) String campPerson,
			@RequestParam(required=false) String order, @RequestParam(defaultValue = "5") int qty,
			@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "0") int type, 
			@RequestParam(defaultValue = "desc") String desc, HttpServletResponse resp) {
		if(page>1) {
			resp.setContentType("application/json; charset=utf8");
			List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type, page, order, qty, desc);
			for(int i=0; i<campSearchList.size(); i++) {
				double rate = (double) cService.getRate((int) campSearchList.get(i).get("campId")).get("avg(rate)");
				campSearchList.get(i).put("rate", rate);
			}
			System.out.println(campSearchList.size());
			System.out.println(campSearchList.toString());
			Gson gson = new Gson();
			String cslNext = gson.toJson(campSearchList);
			try {
				resp.getWriter().print(cslNext);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
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
			List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type, page, order, qty, desc);
			for(int i=0; i<campSearchList.size(); i++) {
				double rate = (double) cService.getRate((int) campSearchList.get(i).get("campId")).get("avg(rate)");
				campSearchList.get(i).put("rate", rate);
			}
			System.out.println(campSearchList.size());
			System.out.println(campSearchList.toString());
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
			mav.addObject("csl", csl);
			mav.setViewName("campSiteSearchResult");
			mav.addObject("sc", sc);
			mav.setViewName("campSiteSearchResult");
			return mav;
		}
		return null;
	}
}
