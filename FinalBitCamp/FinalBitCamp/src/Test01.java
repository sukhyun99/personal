import java.util.Scanner;

public class Test01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String a = sc.nextLine();
		String b = sc.nextLine();
		String c = sc.nextLine();
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		
		if(a=="a"&(b=="b"||c=="c")) {
			System.out.println(1);
		}
	}

}
