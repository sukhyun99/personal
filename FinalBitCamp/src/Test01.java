import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test01 {

	public static void main(String[] args) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");		
		try {
			Date chkIn = format.parse("20180816");
			Date chkOut = format.parse("20180819");
			long diff = (chkOut.getTime() - chkIn.getTime())/( 24*60*60*1000);
			Calendar cal = Calendar.getInstance();			
			for(int i=0; i<diff; i++) {
				cal.setTime(chkIn);
				cal.add(Calendar.DATE, i); // 날짜 더하기
				System.out.println(format.format(cal.getTime()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

//@RequestMapping("daum.do")
//public ModelAndView daum() {
//	ModelAndView mav = new ModelAndView();		
//	List<Map<String, Object>> campLocationList = cService.getLocation();
//	Gson gson = new Gson();
//	String list = gson.toJson(campLocationList);		
//	mav.addObject("list", list);
//	mav.setViewName("daum");
//	return mav;		
//}

//@RequestMapping("map.do")
//public void map(HttpServletResponse resp) {
//	resp.setContentType("application/json; charset=utf8");
//	Gson gson = new Gson();		
//	List<Map<String, Object>> campLocationList = cService.getLocation();
//	String list = gson.toJson(campLocationList);
//	try {
//		resp.getWriter().println(list);
//	} catch (IOException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//}

//@RequestMapping("campSiteSearch.do")
//public List<Map<String, Object>> campSerach(@RequestParam(value="chkIn") int chkIn, @RequestParam(value="chkOut") int chkOut,
//		@RequestParam(required=false) String campAddr, @RequestParam(required=false) String campName,
//		@RequestParam(required=false) String campPerson){
//	if(campAddr==null&campName==null&campPerson==null) {	//날짜로만 검색
//		
//	}
//	else if(campAddr==null&campName==null) {		//날짜, 캠프인원으로 검색
//		
//	}
//	else if(campAddr==null&campPerson==null) {		//날짜, 캠프장명으로 검색
//		
//	}
//	else if(campName==null&campPerson==null) {		//날짜, 캠프장 주소로 검색
//		
//	}
//	else if(campName==null) {		//날짜, 캠프장 주소, 캠프 인원으로 검색
//		
//	}
//	else if(campAddr==null) {		//날짜, 캠프장명, 캠프 인원으로 검색
//				
//	}
//	else if(campPerson==null) {		//날짜, 캠프장 주소, 캠프장명으로 검색
//		
//	}
//	else {			//날짜, 캠프장주소, 캠프장명, 캠프 인원으로 검색
//		
//	}		
//	return null;
//}