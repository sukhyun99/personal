package controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;

import model.Camp;
import model.Member;
import service.CampService;
import service.MemberService;
import service.MemberServiceImp;

@Controller
public class CampController {
	
	@Autowired
	private CampService cService;
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("camp.do")
	public void addCamp() {
		
		JsonParser parser = new JsonParser();
		try {
			Object obj = parser.parse(new FileReader("C:\\Users\\rkrtj\\Documents\\eclipse-jee-oxygen-3a-win32-x86_64\\workspace\\jsonParsing01\\camp.json"));
			JsonObject jsonObject = (JsonObject) obj;
			DataJson dataJson = new Gson().fromJson(jsonObject, DataJson.class);
			
			for(int w=0; w<200; w++) {						//camp DB				
				String businessPhone = "010";
				for(int j=0; j<8; j++) {
					Random random = new Random();
					int i = random.nextInt(10);
					businessPhone = businessPhone + i;
				}		
				
				String campOwner = mService.getMember(w+1).getName();
				String sellerId = mService.getMember(w+1).getUserId();				
				
				Camp camp = new Camp();
				camp.setLatitude(Double.parseDouble(dataJson.records.get(w).latitude));
				camp.setLongitude(Double.parseDouble(dataJson.records.get(w).longitude));
				camp.setCampOwner(campOwner);
				camp.setSellerId(sellerId);			
				camp.setCampAddr(dataJson.records.get(w).campAddr);
				camp.setCampName(dataJson.records.get(w).name);
				camp.setCampPhone(businessPhone);
				camp.setStatus(false);
				
				cService.addCamp(camp);
				// insert구문
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
