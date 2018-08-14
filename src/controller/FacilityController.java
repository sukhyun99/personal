package controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Facility;
import service.FacilityService;

@Controller
public class FacilityController {
	
	@Autowired
	private FacilityService fService;
	
	@RequestMapping("facility.do")
	public void addFacility() {
		for(int i=1; i<201; i++) {
			Facility f = new Facility();
			f.setCampCaravan(new Random().nextBoolean());
			f.setCampElect(true);
			f.setCampFood(new Random().nextBoolean());
			f.setCampGlamping(new Random().nextBoolean());
			f.setCampId(i);
			f.setCampPlayground(new Random().nextBoolean());
			f.setCampShower(true);
			f.setCampToilet(true);
			fService.addFacility(f);
		}
	}
}
