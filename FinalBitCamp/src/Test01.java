import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test01 {

	public static void main(String[] args) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");		
		try {
			Date chkIn = format.parse("20180816");
			Date chkOut = format.parse("20180819");
			long diff = (chkOut.getTime() - chkIn.getTime())/( 24*60*60*1000);
			Calendar cal = Calendar.getInstance();			
			for(int i=0; i<diff; i++) {
				cal.setTime(chkIn);
				cal.add(Calendar.DATE, i); // 날짜 더하기
				System.out.println(format.format(cal.getTime()));
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
