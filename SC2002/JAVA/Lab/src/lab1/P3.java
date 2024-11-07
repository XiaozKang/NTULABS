package lab1;
import java.util.Scanner;

public class P3 {

	public static void main(String[] args) {
		final double RATE = 1.82;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the start point: ");
		int startNumber = sc.nextInt();
		System.out.print("Enter the end point: ");
		int endNumber = sc.nextInt();
		System.out.print("Enter the increment rate: ");
		int incrementRate = sc.nextInt();
		
		System.out.println("US$ \t\t S$");
		System.out.println("-------------------");
		
		for(int i=startNumber;i<=endNumber;i+=incrementRate) {
			System.out.println(i+" \t\t "+RATE*i);
		}
		
	}

}
