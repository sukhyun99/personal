package controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
//	@RequestMapping("daum.do")
//	public ModelAndView daum() {
//		ModelAndView mav = new ModelAndView();		
//		List<Map<String, Object>> campLocationList = cService.getLocation();
//		Gson gson = new Gson();
//		String list = gson.toJson(campLocationList);		
//		mav.addObject("list", list);
//		mav.setViewName("daum");
//		return mav;		
//	}
	
//	@RequestMapping("map.do")
//	public void map(HttpServletResponse resp) {
//		resp.setContentType("application/json; charset=utf8");
//		Gson gson = new Gson();		
//		List<Map<String, Object>> campLocationList = cService.getLocation();
//		String list = gson.toJson(campLocationList);
//		try {
//			resp.getWriter().println(list);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	

//	@RequestMapping("download.do")
//	public View download(int campId) {
//		View view = new DownloadView(cService.attachFile(campId));
//		return view;
//	}
	
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
		else if(person<6) {
			campPerson = "6";
		}
		else if(person<8) {
			campPerson = "8";
		}
		else if(person<10) {
			campPerson = "10";
		}		
		List<Map<String, Object>>campSearchList = cService.campSiteSearch(chkIn, chkOut, search, campPerson, type);
		System.out.println(campSearchList.toString());
		ModelAndView mav = new ModelAndView();
		Gson gson = new Gson();
		String csl = gson.toJson(campSearchList);		
		mav.addObject("csl", csl);
		mav.setViewName("daum");		
		return mav;
	}
//	@RequestMapping("campSiteSearch.do")
//	public List<Map<String, Object>> campSerach(@RequestParam(value="chkIn") int chkIn, @RequestParam(value="chkOut") int chkOut,
//			@RequestParam(required=false) String campAddr, @RequestParam(required=false) String campName,
//			@RequestParam(required=false) String campPerson){
//		if(campAddr==null&campName==null&campPerson==null) {	//날짜로만 검색
//			
//		}
//		else if(campAddr==null&campName==null) {		//날짜, 캠프인원으로 검색
//			
//		}
//		else if(campAddr==null&campPerson==null) {		//날짜, 캠프장명으로 검색
//			
//		}
//		else if(campName==null&campPerson==null) {		//날짜, 캠프장 주소로 검색
//			
//		}
//		else if(campName==null) {		//날짜, 캠프장 주소, 캠프 인원으로 검색
//			
//		}
//		else if(campAddr==null) {		//날짜, 캠프장명, 캠프 인원으로 검색
//					
//		}
//		else if(campPerson==null) {		//날짜, 캠프장 주소, 캠프장명으로 검색
//			
//		}
//		else {			//날짜, 캠프장주소, 캠프장명, 캠프 인원으로 검색
//			
//		}		
//		return null;
//	}
}
