package lab3;
import java.util.Scanner;

public class PlaneApp {
	
	public static void main(String[] args) {
		int choice;
		Plane mainPlane = new Plane();
		Scanner sc = new Scanner(System.in);
		do {
			System.out.println("(1) Show the number of empty seats");
			System.out.println("(2) Show the list of empty seats");
			System.out.println("(3) Show the list of customers together with their seat numbers in the order of the seat numbers");
			System.out.println("(4) Show the list of customers together with their seat numbers in the order of the customer ID");
			System.out.println("(5) Assign a customer to a seat");
			System.out.println("(6) Remove a seat assignment");
			System.out.println("(7) Quit");
			System.out.print("Enter the number of your choice: ");
			choice = sc.nextInt();
			
			switch(choice) {
			case 1 : mainPlane.showNumEmptySeats();
					 break;
			
			case 2 : mainPlane.showEmptySeats();
					 break;
			
			case 3 : boolean bySeatID = true;
					 mainPlane.showAssignedSeats(bySeatID);
					 break;
					 
			case 4 : bySeatID = false;
					 mainPlane.showAssignedSeats(bySeatID);
					 break;
					 
			case 5 : System.out.println("Assigning Seat ..");
					 System.out.print("Please enter SeatID: ");
					 int seatId = sc.nextInt();
					 System.out.print("Please enter Customer ID: ");
					 int customerId = sc.nextInt();
					 if(mainPlane.occupied(seatId)) {
							System.out.println("Seat already assigned to a customer.");
							break;
						}
					 mainPlane.assignSeat(seatId, customerId);
					 System.out.println("Seat Assigned!");
					 break;
			
			case 6 : System.out.print("Enter the SeatID to unassign customer from: ");
					 seatId = sc.nextInt();
					 if(!mainPlane.occupied(seatId)) {
							System.out.println("Seat is already empty!");
							break;
					 	}
					 mainPlane.unAssignSeat(seatId);
					 System.out.println("Seat Unassigned!");
					 break;
			
			case 7: System.out.println("Program terminating ...");
			}
		}while(choice!=7);

	}
	
}
