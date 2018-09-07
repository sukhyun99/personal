package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

}
