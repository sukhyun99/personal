package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import service.CampService;

@Controller
public class CampController {
	
	@Autowired
	private CampService cService;
	
//	@RequestMapping("view.do")
//	public String view() {
//		return "view";
//	}
//	
//	@RequestMapping("download.do")
//	public View download(int campId) {
//		View view = new DownloadView(cService.attachFile(campId));
//		return view;
//	}
	
	@RequestMapping("camp.do")
	public void campSiteSearch() {
		List<Map<String, Object>>campSearchList = cService.campSiteSearch("20180816", "20180819");
		System.out.println(campSearchList.toString());
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
