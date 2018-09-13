package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import model.Member;
import service.MemberService;
import service.MemberServiceImpl;

@Controller
public class adminController {
	
	@Autowired
	private MemberService memberService = new MemberServiceImpl();
	

	@RequestMapping("adminManagingMember.do")
	public ModelAndView adminManageMember() {
		ModelAndView mav = new ModelAndView();
		
		//가져가야 할 정보들 
		//1.회원전체목록
		List<Member> memberList = new ArrayList<Member>();
//		memberList = memberService.selectMemberAll();
		System.out.println(memberList.toString());
		//json으로 생성
		String json = new Gson().toJson(memberList);
		mav.addObject("memberList", json);
		mav.setViewName("adminMemberList");
		return mav;
	}
}
