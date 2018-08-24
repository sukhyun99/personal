package controller;

import java.util.List;
import java.util.Map;

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
	
	@RequestMapping("campSiteSearch.do")
	public ModelAndView campSiteSearch(@RequestParam(required=false) String chkIn, 
			@RequestParam(required=false) String chkinDay, @RequestParam(required=false) String chkOut,
			@RequestParam(required=false) String search, @RequestParam(required=false) String campPerson) {		
		int chkin = Integer.parseInt(chkIn);
		int type = 0;
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
		List<Map<String, Object>> campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type);
		System.out.println(campSearchList.toString());
		System.out.println(campSearchList.size());
		ModelAndView mav = new ModelAndView();
		Gson gson = new Gson();
		String csl = gson.toJson(campSearchList);
		mav.addObject("csl", csl);
		mav.setViewName("campSiteSearchResult");		
		return mav;
	}
}
