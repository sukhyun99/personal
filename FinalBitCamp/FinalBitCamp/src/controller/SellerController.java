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

import model.Member;
import model.Seller;
import service.MemberService;
import service.MemberServiceImp;
import service.SellerService;

@Controller
public class SellerController {
	
	@Autowired
	private SellerService sService;
	@Autowired
	private MemberService mService;
	
	@RequestMapping("service.do")
	public void joinSeller() {
		JsonParser parser = new JsonParser();
		Object obj;
		try {
			obj = parser.parse(new FileReader("C:\\Users\\rkrtj\\Documents\\eclipse-jee-oxygen-3a-win32-x86_64\\workspace\\jsonParsing01\\camp.json"));
			JsonObject jsonObject = (JsonObject) obj;
			DataJson dataJson = new Gson().fromJson(jsonObject, DataJson.class);
			
			for(int w=0; w<100; w++) {						//seller DB
				Random random = new Random();
				System.out.println(mService);
				Member member = mService.getMember(w+1);
				System.out.println(member.toString());
				String sellerId = member.getUserId();
				System.out.println(sellerId);
				String businessPhone = "010";
				for(int j=0; j<8; j++) {					
					int i = random.nextInt(10);
					businessPhone = businessPhone + i;
				}
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
				String businessNum = "";
				for(int j=0; j<10; j++) {					
					int i = random.nextInt(10);
					businessNum = businessNum + i;
				}
				int[] dateArr = {20170108, 20071215, 20180301, 20160507, 20171124, 20100327, 20180922, 20110330, 20130202, 20130608, 20180217, 20140405};				
				int r = random.nextInt(dateArr.length);
				int joinDate = dateArr[r];
				Seller seller = new Seller();				
				seller.setBusinessAddr(dataJson.records.get(w).campAddr);
				seller.setBusinessEmail(businessEmail);
				seller.setBusinessName(dataJson.records.get(w).name);
				seller.setBusinessNum(Long.parseLong(businessNum));
				seller.setBusinessPhone(businessPhone);
				seller.setSellerId(sellerId);
				seller.setJoinDate(joinDate);
				sService.joinSeller(seller);
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
