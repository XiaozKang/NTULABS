package lab1;
import java.util.Scanner;

public class P4 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the height: ");
		int height = sc.nextInt();
		boolean isOdd= true;
		
		for(int i=1; i<=height; i++) {
			
			if(i%2==0)isOdd = false;
			else isOdd = true;
			
			for(int j=1; j<=i; j++) {
				if(isOdd)System.out.print("AA");
				else System.out.print("BB");
				isOdd=!isOdd;
			}
			System.out.println();
		}

	}

}
