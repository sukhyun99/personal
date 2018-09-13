package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
public class MainController {
	
	
	
	public void goMain() {
		
	}
	
	public void goJoinTerms() {
		
	}
	
	public void goJoinForm() {
		
	}
	
	@RequestMapping("sessionCheck.do")		//세션에 아이디값이 있는지 ajax로 확인
	public void sessionCheck(HttpSession session, HttpServletResponse response) throws IOException {
		String userId = (String)session.getAttribute("userId");
		 response.getWriter().println(userId);
		
	}
	
	@RequestMapping("search.do")
	public String goSearchResult() {
		return "campSearchResult";
	}
}
