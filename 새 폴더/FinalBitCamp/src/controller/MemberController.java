package controller;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;

import model.Member;
import service.BookingService;
import service.CampService;
import service.MailService;
import service.MemberService;
import service.MemberServiceImpl;
import service.MileageService;
import service.NaverLoginBO;
import service.SellerService;


@Controller
public class MemberController {
	
	// NaverLoginBO
	@Autowired
	private NaverLoginBO naverLoginBO;
	//마일리지서비스
	@Autowired
	private MileageService mileService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private CampService campService;
	
	@Autowired
	private SellerService sService;
	
	@Autowired
	private MailService mailService;
	

	// NaverLoginBO
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	

	@RequestMapping("pwUpdate.do")
	public void pwUpdate(String pwNow, String pwNew, String pwChk, String userId, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		String pw = m.getPw();
		if(pw.equals(pwNow)) {
			if(pwNew.equals(pwChk)) {
				m.setPw(pwNew);
				if(mService.updateMember(m)) {
					response = 2;		//변경완료
				}
				else {
					response = 3;		//변경실패
				}
			}
			else {
				response = 1;	//새로운 비번이 비번확인값과 일치하지 않음.
			}
		}
		else {
			response = 0;		//현재 디비에 저장되어있는 비번과 입력 받은 비번 값이 일치하지 않음.
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("pwChk.do")
	public void pwChk(String userId, String pwChk, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		String pw = m.getPw();
		if(pw.equals(pwChk)) {
			response = 1;
		}
		else {
			response = 0;
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("memberModifyForm.do")
	public ModelAndView memberModifyForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Gson gson = new Gson();
	    String userId = (String) session.getAttribute("userId");
	    Member member = mService.selectMember(userId);
	    String memberInfo = gson.toJson(member);
	    int mileage = mileService.selectTotalMileage(userId);
	    mav.addObject("mileage", mileage);
	    mav.addObject("member", member);
	    mav.addObject("memberInfo", memberInfo);
        mav.setViewName("memberModifyForm");
        return mav;
	}
	
	@RequestMapping("memberModifyPwCheck.do")
	public ModelAndView memebrModifyPwCheck(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	    String userId = (String) session.getAttribute("userId");
	    int mileage = mileService.selectTotalMileage(userId);
	    mav.addObject("mileage", mileage);
	    mav.addObject("member", mService.selectMember(userId));
        mav.setViewName("memberModifyPwCheck");
        return mav;
	}
	
	
	@RequestMapping("findPass.do")
	public void findPass(String userId, String email, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		if(m!=null) {
			if(m.getEmail().equals(email)) {
				String subject = "비번찾기 안내드립니다.";
				String text = "";
				text = userId + "님의 비밀번호는 " + m.getPw() + " 입니다.";
				mailService.send(subject, text, email);
				response = 1;			//이메일 발송 완료
			}
			else {
				response = 2;		//디비의 이메일과 입력 받은 이메일 값이 일치하지 않음
			}
		}
		else {
			response = 3;		//존재하지 않는 이름
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("findId.do")
	public void findId(String name, String email, HttpServletResponse resp) {
		Member m = mService.selectMemberName(name);
		int response;
		if(m!=null) {
			if(m.getEmail().equals(email)) {
				String subject = "아이디찾기 안내드립니다.";
				String text = "";
				text = name + "님의 아이디는 " + m.getUserId() + " 입니다.";
				mailService.send(subject, text, email);
				response = 1;			//이메일 발송 완료
			}
			else {
				response = 2;		//디비의 이메일과 입력 받은 이메일 값이 일치하지 않음
			}
		}
		else {
			response = 3;		//존재하지 않는 이름
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("memberFindingForm.do")
	public String memberFindingForm() {
		return "memberFindingForm";
	}
	
	@RequestMapping("memeberJoinTerms.do")
	public String joinMemberTerms() {
		return "memberJoinForm";
	}

	
	@RequestMapping("idChk.do")
	public void idChk(String id, HttpServletResponse resp) {
		resp.setContentType("application/json; charset=utf8");
		Member m = mService.selectMember(id);
		String response;
		if(m!=null) {
			response = "false";
		}
		else {
			response = "true";
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("joinMember.do")
	public void joinMember(String userId, String name, String pass, String tel, 
			String post, String addr, String email, HttpServletResponse resp) {
		String response = "true";
		Member m = new Member();
		m.setAddr(addr);
		m.setEmail(email);
		m.setName(name);
		m.setUserId(userId);
		m.setPw(pass);
		m.setPhone(tel);
		m.setPost(post);
		m.setAdmin(false);
		m.setJoinDate(new Date());
		m.setType(1);
		mService.joinMember(m);
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateMember(String userid, String pw, String pwChk, String name, String email, String addr, int phone,
			int post) {

	}

	public void getMember(String userId) {

	}

	public void leaveMember(String userId, String pw) {

	}
	
	@RequestMapping(value = "memberLogin.do", method = RequestMethod.POST)
	public String loginMember(HttpSession session, String userId, String pw) {
		if (mService.login(userId, pw)) {
			session.setAttribute("userId", userId);
			System.out.println("userId =" + userId  + "pw = " + pw);
			return "redirect:main.do";
		} else {
			System.out.println("실패");
			return "redirect:main.do";
		}
	}
	
//	@RequestMapping("kakaoLogin.do")
//	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest request,
//			HttpServletResponse response, HttpSession session) throws Exception {
//		// accessToken 얻기
//		JsonNode token = service.kakaoLogin.getAccessToken(code);
//		// 로그 아웃 시 accessToken 사용하기 위해서 session에 등록
//		session.setAttribute("KaccessToken", token.path("access_token").toString());
//		// accessToken으로 고객 정보 얻기
//		JsonNode profile = service.kakaoLogin.getKakaoUserInfo(token.path("access_token").toString());
//		// 얻은 고객정보 DB에 저장되어 있는지 확인
//		mService.MemberKakao(profile, session);
//		return "redirect:main.do";
//	}

	@RequestMapping("naverLogin.do")
	public String naverLogin(HttpSession session) {
		// 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// 생성한 인증 URL을 view로 전달
		return "redirect:" + naverAuthUrl;
	}

	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("callback.do")
	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		// 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
		mService.MemberNaver(apiResult, session);
		return "redirect:main.do";

	}
	

	@RequestMapping("logout.do")
	public String logoutMember(HttpSession session) {
		String user = (String) session.getAttribute("userId");
		Member m = new Member();
		m = mService.selectMember(user);
		if (m.getType() == 1) { // 일반 회원 로그아웃
			session.removeAttribute("userId");
		} else if (m.getType() == 2) { // naver 회원 로그아웃
			String accessToken = (String) session.getAttribute("NaccessToken");
			try {
				String result = naverLoginBO.tokenDelete(accessToken);
				System.out.println("result = " + result);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (m.getType() == 3) { // kakao 회원 로그아웃
			String accessToken = (String) session.getAttribute("KaccessToken");
			service.kakaoLogin.kakaoLogOut(accessToken);
			// session.removeAttribute("userId");
		}
		session.removeAttribute("userId");
		return "redirect:main.do";
	}

	public void getMemberList(Date joinDate) {

	}
	
	
	@RequestMapping("memberMyBooking.do")
	public ModelAndView getMyBookingList(HttpSession session) {			//일반회원 예약현황 페이지이동
		
		ModelAndView mav = new ModelAndView();
		
		//가져가야 할 정보들
		//1.유저아이디
		String userId = "jin";
		//2.마일리지
//		int mileage = mileageService.getMyMileage(userId).getMileage();
		//3.예약정보
		HashMap<String, Object> bookingList = new HashMap<String, Object>();
		HashMap<String, Object> params = new HashMap<String, Object>();
		int page = 1;
		params.put("type", 0);
		params.put("startDate", new Date());
		params.put("userId", userId);
		bookingList = bookingService.getBookingListPage(params, page);
		String json = new Gson().toJson(bookingList);
		System.out.println("제이슨:"+json.toString());
		
		mav.addObject("bookingList", json);
		mav.addObject("userId", userId);
//		mav.addObject("mileage", mileage);
		
		mav.setViewName("memberMyBooking");
		
		return mav;
	}
	
	@RequestMapping("memberSearchMyBooking.do")
	public ModelAndView bookingSearch(HttpSession session, @RequestParam(defaultValue="1")int page, 
			@RequestParam(required=false) String keyword, @RequestParam(defaultValue="0") int type,
			@RequestParam(required=false) String startDate,@RequestParam(required=false) String endDate) {
		System.out.println("페이지:"+page+", 키워드:"+keyword+", type:"+type+", 스타트:"+startDate+"엔드:"+endDate);
		ModelAndView mav = new ModelAndView();
//		String userId = (String) session.getAttribute("userId");
		String userId = "monSon31starr";
		HashMap<String, Object> params = new HashMap<String, Object>();
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		params.put("type", type);
		params.put("keyword", keyword);
		
		 if (type == 1) {
			params.put("campName", keyword); 
		} else if (type == 2) {
			params.put("bookingNum", keyword);
		} else if (type == 3) {
			params.put("name", keyword);
		} else if ((startDate != null || startDate != "") && (endDate != null || endDate != "")) {
			params.put("startDate", startDate);
			params.put("endDate", endDate);
		}
		
		params.put("userId", userId);
		result = bookingService.getBookingListPage(params, page);
				
		String json1 = new Gson().toJson(result);
		String json2 = new Gson().toJson(params);
		
		mav.addObject("mileage", mileService.getMyMileage(userId));
		
		System.out.println(json1.toString());
		System.out.println(json2.toString());
		 
		return mav;
	}
	
}
