package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import model.MyCamp;
import service.MyCampService;
@Controller
public class MyCampController {
	
	@Autowired
	private MyCampService mcService;
	
	@RequestMapping("myCamp.do")
	public String myCamp(@RequestParam(value="siteId") int siteId, @RequestParam(value="userId") String userId) {
		mcService.addMyCamp(siteId, userId);
		return "campSiteSearchResult";
	}
	
	@RequestMapping("removeMyCamp.do")
	public String removeMyCamp(@RequestParam(value="siteId") int siteId, @RequestParam(value="userId") String userId) {
		mcService.deleteMyCamp(siteId, userId);
		return "campSiteSearchResult";
	}
	
	@RequestMapping("getMyCamp.do")
	public void getMyCamp(HttpSession session, HttpServletResponse resp) {
		String userId = (String) session.getAttribute("userId");
		List<MyCamp> mcl = mcService.getMyCamp(userId);
		Gson gson = new Gson();
		String myCampList = gson.toJson(mcl);
		try {
			resp.getWriter().println(myCampList);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
