import java.util.Random;

public class Test01 {

	public static void main(String[] args) {
		String businessNum = "";
		Random random = new Random();
		for(int j=0; j<10; j++) {					
			int i = random.nextInt(10);
			businessNum = businessNum + i;
		}	
		long result = Long.parseLong(businessNum);
		System.out.println(result);
	}

}
