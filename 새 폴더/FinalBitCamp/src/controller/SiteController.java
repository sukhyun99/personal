package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import model.Site;
import service.SiteServiceImpl;


@Controller
public class SiteController {
	
	@Autowired
	private SiteServiceImpl siteService = new SiteServiceImpl();

	
	
	
	public void addSite(String campId, String campSiteName, String content, String siteId, int campSiteStock, int campPerson, int busyDayPrice, int busyWkndPrice, int dayPrice, int wkndPrice, Date startBusyDate, Date endBusyDate){

	}

	public void updateSite(String campId, String campSiteName, String content, String siteId, int campSiteStock, int campPerson, int busyDayPrice, int busyWkndPrice, int dayPrice, int wkndPrice, Date startBusyDate, Date endBusyDate){

	}

	public void deleteSite(String siteId){

	}
	
	@RequestMapping("getASite.do")
	public void getSite(HttpServletResponse resp, @RequestParam int siteId, @RequestParam String startDate,
			@RequestParam String endDate){
		Site site = siteService.getAsite(siteId);
		try {
			resp.setCharacterEncoding("UTF-8");
//			PrintWriter pw = resp.getWriter();
			if(site != null) {
				String json = new Gson().toJson(site);
				resp.getWriter().println(json);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
