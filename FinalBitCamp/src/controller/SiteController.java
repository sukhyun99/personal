package controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;

import model.Site;
import service.CampService;
import service.SiteService;

@Controller
public class SiteController {

	@Autowired
	private SiteService sService;
	
	@Autowired
	private CampService cService;
	
	@RequestMapping("site.do")
	public void addSite(){
		JsonParser parser = new JsonParser();
		Object obj;
		try {
			obj = parser.parse(new FileReader("C:\\Users\\rkrtj\\Documents\\eclipse-jee-oxygen-3a-win32-x86_64\\workspace\\jsonParsing01\\camp.json"));
			Object objA = parser.parse(new FileReader("C:\\Users\\rkrtj\\Documents\\eclipse-jee-oxygen-3a-win32-x86_64\\workspace\\jsonParsing01\\siteA.json"));			
			JsonObject jsonObject = (JsonObject) obj;			
			JsonObject jsonObjectA = (JsonObject) objA;			
			DataJson dataJson = new Gson().fromJson(jsonObject, DataJson.class);
			SiteInfo dataJson1 = new Gson().fromJson(jsonObjectA, SiteInfo.class);
			
			for(int w=0; w<200; w++) {						//site DB
				Site site = new Site();
				Random random = new Random();
				int x = random.nextInt(4)+4;
				int busyStart = 20180723;
				int busyEnd = 20180826;	
				int campId = 1;
//				int campId = (int) cService.getCamp(w+1).get(w+1).get("campId");
				for(int z=0; z<x; z++) {
					site.setCampId(campId);
					int index = random.nextInt(w+1);
					site.setCampSiteName(dataJson1.siteinfo.get(index).campSiteName);
					site.setBusyDayPrice(dataJson1.siteinfo.get(index).busyDayPrice);
					site.setBusyWkndPrice(dataJson1.siteinfo.get(index).busyWkndPrice);
					site.setCampPerson(dataJson1.siteinfo.get(index).campPerson);
					site.setCampSiteStock(index);
					site.setDayPrice(dataJson1.siteinfo.get(index).dayPrice);
					site.setWkndPrice(dataJson1.siteinfo.get(index).wkndPrice);
					site.setStartBusyDate(busyStart);
					site.setEndBusyDate(busyEnd);
					sService.addSite(site);
				}				
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

class SiteInfo {
	@SerializedName("Site")
	public List<SiteJson> siteinfo;
	
	class SiteJson{
		@SerializedName("campSiteName")
		String	campSiteName;
		
		@SerializedName("campPerson")
		int	campPerson;
		
		@SerializedName("busyDayPrice")
		int	busyDayPrice;
		
		@SerializedName("busyWkndPrice")
		int	busyWkndPrice;
		
		@SerializedName("dayPrice")
		int	dayPrice;
		
		@SerializedName("wkndPrice")
		int	wkndPrice;
	}
}
