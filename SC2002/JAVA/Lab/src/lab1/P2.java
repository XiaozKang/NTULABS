package lab1;
import java.util.Scanner;

public class P2 {

	public static void main(String[] args) {
		
		char grade;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter your salary: $");
		int salary = sc.nextInt();
		System.out.print("Enter your merit: ");
		int merit = sc.nextInt();
		
		if(salary<649)grade='C';
		else if(salary<799)grade='B';
		else grade= 'A';
		
		switch(grade){
		case 'C': if(salary >= 600 && merit>=10)grade='B';
				  break;
		case 'B': if(salary >=700 && merit>=20)grade='A';
		}
		
		System.out.println("Grade = " + grade);
	}

}
