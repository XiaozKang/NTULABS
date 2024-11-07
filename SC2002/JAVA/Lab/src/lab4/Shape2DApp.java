package lab4;
import java.util.Scanner;

public class Shape2DApp {

	/**
	 * @param args
	 */
	static Scanner sc= new Scanner(System.in);
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Enter the total number of shapes: ");
		int numOfShapes = sc.nextInt();
		Shape[] s = new Shape[numOfShapes];
		
		for(int i=0;i<numOfShapes;i++){
			System.out.println("Choose the shapes...");
			System.out.println("1.Square \n2.Rectangle \n3.Circle \n4.Triangle\n");
			int choice = sc.nextInt();
			switch(choice){
			case 1: System.out.println("Enter the length of Square: ");
					double length =  sc.nextDouble();
					s[i]= new Square(length);
					break;
			case 2: System.out.println("Enter the length: ");
					double rectLength =  sc.nextDouble();
					System.out.println("Enter the breadth: ");
					double rectBreadth =  sc.nextDouble();
					s[i] = new Rectangle(rectLength, rectBreadth);
					break;
			case 3: System.out.println("Enter the radius of Circle: ");
					double radius = sc.nextDouble();
					s[i]=new Circle(radius);
					break;
			case 4: System.out.println("Enter the height: ");
					double height =  sc.nextDouble();
					System.out.println("Enter the base: ");
					double base =  sc.nextDouble();
					s[i]= new Triangle(height,base);
					break;
			default:System.out.println("Wrong Choice");
					i--;
			
			}
		}
		System.out.println("Enter the calculation mode: ");
		System.out.println("1.Calculate2DArea");
		int choicecal = sc.nextInt();
		
		switch(choicecal){
		case 1:
			double area2D =0;
			for(int j=0; j<numOfShapes;j++){
				area2D += s[j].calculate2DArea();
				
			}
			System.out.println("The total 2D area calculated is "+ area2D);
			break;
			
		default:System.out.println("Wrong Choice");
		}
		
		
		
		
		
		
		
	}

}
