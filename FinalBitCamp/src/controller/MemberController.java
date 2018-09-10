package controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;

import model.Member;
import service.BookingService;
import service.MailService;
import service.MemberService;
import service.MileageService;
import service.NaverLoginBO;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	// NaverLoginBO
	@Autowired
	private NaverLoginBO naverLoginBO;
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private MileageService mileService;
	
	@Autowired
	private BookingService bService;
	
	@RequestMapping("leaveMember.do")
	public void leaveMember(String userId, HttpServletResponse resp, HttpSession session) {
		int response;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		HashMap<String, Object> params = new HashMap<>();
		params.put("userId", userId);
		params.put("date", sdf.format(new Date()));
		if(bService.chkBooking(params)>0) {
			response = 0;		//진행중인 예약이나 결제가 있음
		}
		else {
			if(mileService.getMyMileage(userId)!=null) {
				mileService.deleteMemberMileage(userId);
			}
			mService.leaveMember(userId);
			session.removeAttribute("userId");
			response = 1;		//탈퇴 성공
		}
		try {
			resp.getWriter().println(response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("addrUpdate.do")
	public void addrUpdate(String userId, String post, String addr, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		m.setAddr(addr);
		m.setPost(post);
		if(mService.updateMember(m)) {
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
	
	@RequestMapping("phoneUpdate.do")
	public void phoneUpdate(String phone, String userId, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		m.setPhone(phone);
		if(mService.updateMember(m)) {
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
	
	@RequestMapping("emailUpdate.do")
	public void emailUpdate(String email, String userId, HttpServletResponse resp) {
		Member m = mService.selectMember(userId);
		int response;
		m.setEmail(email);
		if(mService.updateMember(m)) {
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
	    int mileage;
	    if(mileService.getMyMileage(userId)==null) {
	    	mileage = 0;
	    }
	    else {
	    	mileage = mileService.selectTotalMileage(userId);
	    }
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
	    int mileage;
	    if(mileService.getMyMileage(userId)==null) {
	    	mileage = 0;
	    }
	    else {
	    	mileage = mileService.selectTotalMileage(userId);
	    }
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
	
	@RequestMapping(value = "memberLogin.do", method = RequestMethod.POST)
	public String loginMember(HttpSession session, String userId, String pw) {
		if (mService.login(userId, pw)) {
			session.setAttribute("userId", userId);
			return "redirect:main.do";
		} else {
			System.out.println("실패");
			return "redirect:main.do";
		}
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
	
	@RequestMapping("naverLogin.do")
	public String naverLogin(HttpSession session) {
		// 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// 생성한 인증 URL을 view로 전달
		return "redirect:" + naverAuthUrl;
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
	
	@RequestMapping("hello.do")
	public void hello() {
		
		JsonParser parser = new JsonParser();
		Object obj;
		try {
			obj = parser.parse(new FileReader("C:\\Users\\rkrtj\\Documents\\eclipse-jee-oxygen-3a-win32-x86_64\\workspace\\jsonParsing01\\camp.json"));
			JsonObject jsonObject = (JsonObject) obj;
			DataJson dataJson = new Gson().fromJson(jsonObject, DataJson.class);
						
			for(int w=0; w<150; w++) {				//Member DB
				Random random = new Random();
				String businessEmail = "";
				for(int j=0; j<4; j++) {
					String [] email1 = {"4","5","6","7","8","9","0","green","white","earth","red","tree","yes","union","i","opera","power","all","shine","dream","fun","game","house","june","kool","lime","zone","camp","1","2","3","magic"};					
					int i = random.nextInt(email1.length);
					businessEmail = businessEmail + email1[i];
					if(j==3) {
						String [] email2 = {"@naver.com", "@daum.net", "@gmail.com", "@hotmail.com"};
						int q = random.nextInt(email2.length);
						businessEmail = businessEmail + email2[q];
					}
				}				
				String businessPhone = "010";
				for(int j=0; j<8; j++) {					
					int i = random.nextInt(10);
					businessPhone = businessPhone + i;
				}
				int[] dateArr = {20170108, 20071215, 20180301, 20160507, 20171124, 20100327, 20180922, 20110330, 20130202, 20130608, 20180217, 20140405};				
				int r = random.nextInt(dateArr.length);
				int joinDate = dateArr[r];
				String pw = "";
				String userId = "";
				for(int t=0; t<2; t++) {
					String [] pwArr = {"Pin_3", "Abeen-22", "Queen!3", "33Damn?", "?Jaws?23", "-Stop1", "_monSon_31", "Jin_84",
							"hoRRor!45","chaiR-4", "wood!33", "Land?2", "Palm!98"};
					String [] userArr = {"money12", "pillow", "ham", "swim22", "starr", "Doom", "kane", "home4" , "man3", "big", "Game",
							"pin45", "been-22", "drug", "33Damn", "Jaws23", "Stop2", "monSon31", "DoeMe", "smap55", "wHam", "54"};
					int pwNum = random.nextInt(pwArr.length);
					int userNum = random.nextInt(userArr.length);
					pw = pw + pwArr[pwNum];
					userId = userId + userArr[userNum];
				}
				String[] nameArr = {"김상곤","박대림","이태주","박춘란","허영기","송현석","이혜진","임창빈","안순억","정승화","송경원","김영철","김태훈","김지연","김영진","임소희","이영찬","최성부","최승복","오신종",
						"한정이","김상수","최영한","김현주","장세은","강정자","하유경","이난영","김일수","금정수","김희봉","김홍필","이정애","최두영","송준호","안주란","최윤정","김청현","김태현","임용빈",
						"엄진섭","이동준","이석현","이주희","최현석","최기혁","이진석","김규태","이해숙","최  경","지혜진","최수진","이의석","김도영","이재력","김정연","박성수","윤소영","이양주","이강복",
						"이지은","문상연","송근현","정성훈","김영곤","고영종","최민호","김우정","박성하","최보영","이창준","염기성","안상훈","이중현","최은희","이상수","신진용","장미란","김형기","최창익",
						"남부호","권영민","이혜진","김주영","조훈희","김영재","신미경","조성연","김성원","설세훈","김도완","권삼수","천범산","김태경","구본억","권지영","박지영","정인순","배동인","차영아",
						"이상돈","조명연","이한우","이홍열","최은옥","유지완","정윤경","최우성","권성연","송은주","강양은","김  석","서혜숙","류정섭","유정기","윤석훈","이소영","정대영","양창완","김현국",
						"오응석","송달용","조  광","진재관","박광원","박진희","한긍희","전미희","류주희","김은숙","신용갑","김종무","노선옥","안수경","배성근","노연규","어성훈","김영권","이근우","김진수",
						"민미홍","송기동","구연희","박승철","라은종","박성민","정현욱","이종필","반선섭","김헌영","김상동","이상경","김희수","곽병선","이상철","김상채","박성현","김영섭","전호환","김종호",
						"박진성","권태환","정병석","이남호","송석언","김남경","최해범","오덕성","윤여표","이병찬","류희찬","김성조","박한일","유수노","송하영","임태희","김경성","오세복","임청환","고대혁",
						"이환기","윤건영","안병근","김우영","최문성","이상진","성낙인","조동성","김동연","강승준","박재진","정  원","고형권","김용진","이찬우","황건일","조규홍","박지웅","민철기","김만수",
						"강윤진","이복원","황희정","백병갑","이종수","이돈일","이계문","홍민석","이미혜","정무경","손웅기","배성현","김한준","정유리","문경호","정남희","정기철","윤채영","김성구","박창규",
						"구윤철","안일환","최한경","진민규","김명중","남경철","김이한","오은실","문성유","박준호","허승철","이병연","박문규","안도걸","신상훈","이상영","육현수","조인철","장윤정","이상원",
						"박창환","이주현","류형선","윤병태","강대현","박정민","오기남","김우중","장승대","정창길","김병규","임재현","김종옥","박은영","양순필","변광욱","조만희","박경찬","노중현","이상율",
						"박홍기","이호근","송진혁","이형철","윤정인","배정훈","진승하","성용욱","김정홍","김문건","이호섭","장영규","조영욱","김위정","도규상","주환욱","고광희","배병관","김명규","장보영",
						"황인웅","심규진","방기선","한  훈","강기룡","조현진","배준형","이상윤","임상준","김영노","천재호","이승한","이억원","이주섭","강병중","이영주","박상영","한재용","김동익","우범기",
						"박홍진","김선길","김동곤","오현경","마성균","박성동","윤성욱","이재선","이상규","이용욱","김구년","김동엽","고정민","진강렬","최상대","임기근","장정진","박호성","김시동","고종안",
						"최용호","신언주","이용안","박지훈","오규택","김완섭","안상열","조규산","고정삼","이명선","신민철","이승욱","조성철","권중각","양충모","오상우","김유정","정향우","문경환","박봉용",
						"김영훈","황병기","임재정","임동규","김규정","김윤경","조원경","문지성","심현우","오재우","우병렬","김후진","장도환","하승완","이대중","지광철","서규식","최영배","조용수","윤태식",
						"유병희","윤정주","김남성","도종록","김동준","나상곤","이종훈","김경희","박성훈","이대균","이인옥","황판식","이진규","김용수","임대식","윤천원","조일출","정한근","조낙현","정성환",
						"박노재","정진현","강상욱","이정순","이규만","마창환","이성봉","송재성","이강우","김국현","김기석","정민원","최성준","장국환","손석준","송경희","김꽃마","신상열","최문기","이충원",
						"김재근","정병선","김정원","이석래","윤성훈","김민표","홍사찬","조종영","서경춘","박병현","최미정","조경옥","최원호","장인숙","송완호","김진우","이창선","곽재규","김영은","이병희",
						"이창윤","임요업","이현호","김보열","장홍태","한성일","강병삼","서성일","김태영","박지영","장병주","강호원","양환정","최영해","홍진배","김경아","송규철","양청삼","김도환","이재형",
						"이주식","정영길","양기성","용홍택","송상훈","최정호","최우혁","최준환","홍성완","노경원","최준호","이현정","곽병진","이우진","김영문","이경림","김정삼","조해근","최동원","박준국",
						"이영철","이창희","김정기","황큰별","강도성","구영섭","김용미","전성배","정창림","김준모","김연진","김정렬","전영수","정재훈","류제명","허원석","박태완","김경우","이상민","마재욱",
						"배영식","류광준","김성수","오대현","현영목","한형주","방연호","강건기","김대기","김정하","신재식","이주원","고정호","허준행","조선학","최도영","이태희","김성규","김  연","성석함",
						"이재흔","이은주","오태건","최정규","오학태","김경미","배영식","박인호","성향숙","이장수","이영미","나현준","나인광","오용수","이홍식","이윤호","정규연","최태호","이상철","박태영",
						"김창현","배태민","유경근","정원영","정기상","배정회","이상명","안승락","김동섭","배재웅","양이석","김현수","송기출","박혜현","최호권","권일찬","유창영","김기태","조남준","이정구",
						"강성주","손승현","박인환","박성용","정현철","김맹호","김두희","신대섭","서  동","임낙희","최승만","오형근","김홍재","류대규","임성민","박태희","이종민","진봉준","박한선","김승모",
						"최충봉","신현준","김도균","김희중","이진영","권영란","정철중","김동주","이동명","이욱희","유중환","이영구","도병균","정해용","문성용","최용록","김성택","이호준","김대성","박진상",
						"박종석","김군현","이성천","김영일","박상태","김찬수","김낙현","윤성전","김광수","최상규","강영철","이혜림","임호영","정상준","김승만","황수연","주정균","김훈웅","조현진","이상욱",
						"김철수","박기섭","백형국","장영화","오광수","이동형","천장수","정경배","박윤섭","안일선","이원종","김동혁","황국선","윤순상","홍동호","이관수","유해수","주동율","김병환","이광해",
						"박노직","윤승구","오기호","박병률","김태완","임인식","조병호","송영식","이재현","박종욱","손충환","송준현","신동희","김상우","최태경","선  향","최석봉","전성무","김용원","김태범",
						"권수일","우원식","최재웅","노동환","심정보","윤원근","유영철","변주용","김무갑","조한섭","배철주","정인철","김창영","최종철","남철진","홍만표","민승기","안재수","이완직","한우향",
						"김문수","정재준","이윤택","최원봉","진수동","이남훈","조성욱","이상명","박래구","이진섭","박승곤","우순만","정진용","박종훈","이동호","허명규","강명구","김석주","김향란","임영일",
						"황철연","송정수","이건호","김진만","오일태","박철수","임동기","최무열","박중녕","박성수","김원봉","박윤수","권천조","박용규","김종환","이창규","김성칠","박금영","최정호","박찬례",
						"김병기","이기찬","장재혁","김재평","민재석","김영식","석원근","박찬우","홍순희","이용춘","조정근","신유익","강경화","임성남","조  현","윤순구","송해영","노규덕","김득환","이제형",
						"박은하","마상윤","강영신","손창호","박완기","이한일","서정인","태준열","이병도","강호증","강유식","장병원","김필우","김동영","임진혁","김천영","이수정","최병국","이욱헌","조성욱",
						"김현두","김용길","임시흥","이한상","이선아","권순현","위준석","김혜진","이승범","장  원","허태완","박정오","이상희","김찬우","정기홍","윤지완","문인석","홍진욱","조주성",
						"윤희찬","나상덕","차웅기","임상범","김성은","백용진","윤강현","김찬우","문덕호","권기환","박은주","신희선","최순희","배종인","유기준","김영재","황준식","안현상","홍석인","서은지",
						"송정혜","선승혜","정광수","송진화","강재권","김병준","안동욱","김희상","장호승","천성환","조재홍","신석홍","이동규","김창수","이도훈","정연두","홍사원휘","유승민","이충면","이정우",
						"박형철","조병제","정병원","이경렬","박종석","표지은","장운정","여승철","여운기","조아름","여소영","백지아","최우선","이원우","인남식","김덕주","신성원","유동완","박영식","여승배",
						"이친범","신성순","도경환","오  송","이상화","안성두","이 혁","임재훈","조원명","이  헌","김영채","이백순","윤상수","신봉길","김성은","김형태","김창범","이수훈","주철완","정미애",
						"박용민","오태규","손종식","김선표","노영민","정재남","황순택","박선원","임병진","이강국","장제학","박진웅","김원진","오낙영","노광일","곽성규","조신희","한동만","조태열","조윤제",
						"김영준","박효성","김완중","박준용","이형종","이종국","강영훈","김형길","신맹호","김건","허  진","정태인","이운호","홍석화","김병연","김상일","이종철","이정관","김학유",	"이영근",
						"이인호","황성연","정인균","전영욱","김두식","이두영","박상훈","안민식","조준혁","이백만","안영집","이윤영","최재철","정범구","신성철","백범흠","우윤근","엄기영","이석배","이진현",
						"김은중","김형진","김용호","신부남","유대종","이정규","권해룡","전홍조","이태로","허강일","김창규","신동익","권용우","이양구","최종현","유혜란","문승현","김대식","전승민","박원섭",
						"정병후","최홍기","문병준","박철민","최성주","최종문","김수권","윤종원","이병현","최경림","김성수","박정남","이인태","박종대","김응중","임상우","김흥수","김효은","김동찬","김유철",
						"임훈민","조재철","유복렬","권영대","이용일","권기창","송금영","이영만","최성수","박동실","구현모","이상균","이기석","허남덕","박상진","박웅철","강도호","이범연","송웅엽","김승호",
						"최용환","윤여철","박흥경","김종석","이금로","이종근","구승희","허철안","문홍성","한정진","송세시","장인종","송규종","안동완","이진용","문권점","김종관","이영일","이한식","유지중",
						"조상철","이상순","김만하","김상권","최상혁","김홍준","최정석","조오행","강의곤","이천재","김종태","김정복","이석재","홍순돌","주양근","배용찬","박은혜","김영준","이용구",};
				int m = random.nextInt(nameArr.length);
				Member member = new Member();
				member.setAddr(dataJson.records.get(w).campAddr);
				member.setAdmin(false);
				member.setEmail(businessEmail);
//				member.setJoinDate(joinDate);
				member.setName(nameArr[m]);
				member.setPhone(businessPhone);
				member.setPw(pw);
				member.setUserId(userId);
				System.out.println(member.toString());
				mService.joinMember(member);
			}			
		} catch (JsonIOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
}
