package lab2;
import java.util.Scanner;
import java.util.InputMismatchException;
import java.util.Random;

public class Lab2p1 {
	public static int noOfCorrect = 0;
	public static void main(String[] args) {
		int choice;
		Scanner sc = new Scanner(System.in);
		Random random = new Random();
		do {
			System.out.println("Perform the following methods:");
			System.out.println("1: miltiplication test");
			System.out.println("2: quotient using division by subtraction");
			System.out.println("3: remainder using division by subtraction");
			System.out.println("4: count the number of digits");
			System.out.println("5: position of a digit");
			System.out.println("6: extract all odd digits");
			System.out.println("7: quit");
			choice = sc.nextInt();
			switch (choice) {
			case 1: /* add mulTest() call */
				for(int i=1; i<=5; i++) {
					int firstNumber = random.nextInt(10);
					int secondNumber = random.nextInt(10);
					System.out.print("How much is " + firstNumber + " times " + secondNumber +"?");
					int inputAns = sc.nextInt();
					mulTest(firstNumber, secondNumber, inputAns);
				}
				System.out.println(noOfCorrect + " answers out of 5 are correct.");
				noOfCorrect = 0;
				break;
				
			case 2: /* add divide() call */
				System.out.print("m = ");
				int m = sc.nextInt();
				System.out.println();
				System.out.print("n = ");
				int n = sc.nextInt();
				System.out.println();
				int quotient = divide(m,n);
				System.out.println(m + "/" + n + " = " +quotient);
				break;
				
			case 3: /* add modulus() call */
				System.out.print("m = ");
				m = sc.nextInt();
				System.out.println();
				System.out.print("n = ");
				n = sc.nextInt();
				System.out.println();
				int remainder = modulus(m,n);
				System.out.println(m + "%" + n + " = " + remainder);
				break;
				
			case 4: /* add countDigits() call */
				/*try{
			            System.out.print("n: ");
			            n = sc.nextInt();
			       } catch (InputMismatchException e) {
			            System.out.println(" - Error input!!");
			            break;
			       }*/
				System.out.print("n: ");
				n = sc.nextInt();
				if(n<0) {
					System.out.println("n: " + n + " - Error input!!");
					break;
				}
				int noOfDigits = countDigits(n);
				System.out.println("n:" + n + " - count = " + noOfDigits);
				break;

			case 5: /* add position() call */
				System.out.print("n: ");
				n = sc.nextInt();
				System.out.print("digit: ");
				m = sc.nextInt();
				int location = position(n, m);
				System.out.println("positon = " + location);
				break;
				
			case 6: /* add extractOddDigits() call */
				System.out.print("n: ");
				long number = sc.nextLong();
				if(number<0) {
					System.out.println("oddDigits = Error input!!");
					break;
				}
				long oddDigits = extractOddDigits(number);
				System.out.println("oddDigits = " + oddDigits);
				break;
				
			case 7: System.out.println("Program terminating ...");
			}
		} while (choice < 7);
	}
		 
	
	
	/* add method code here */
	public static void mulTest(int firstNumber, int secondNumber, int inputAns) {
		int answer = firstNumber * secondNumber;
		if(inputAns == answer)noOfCorrect ++;
	}
	
	public static int divide(int m,int n) {
		int remainder = m;
		int quotient = 0;
		while(remainder >= n) {
			remainder -= n;
			quotient++;
		}
		return quotient;
	}
	
	public static int modulus(int m,int n) {
		int remainder = m;
		while(remainder >= n) {
			remainder -= n;
		}
		return remainder;
	}
	
	public static int countDigits(int n) {
		String nString = Integer.toString(n);
		int noOfDigits = nString.length();
		return noOfDigits;
	}
	
	public static int position(int n, int digit) {
		/*String nString = Integer.toString(n);
		int location = 1;
		int stringLength = nString.length();
		for(int i=1;i<=stringLength; i++) {
			if(nString.charAt(stringLength-i)== Character.forDigit(digit, 10)) {
				return location;
			}
			location++;
		}*/
		int location = 1;
		int temp = n;
		while(temp!=0) {
			int tempDigit = temp%10;
			if(tempDigit == digit)return location;
			location++;
			temp /= 10;
		}
		return -1;
	}
	
	public static long extractOddDigits(long number) {
		String nString = Long.toString(number);
		long oddDigits = 0;
		for(int i=0; i<nString.length(); i++) {
			long tempDigit = Character.getNumericValue(nString.charAt(i));
			if(tempDigit%2 == 1) {
				oddDigits *= 10;
				oddDigits += tempDigit;
			}
		}
		if(oddDigits == 0) return -1;
		return oddDigits;
	}
	
	
	
}
		 


