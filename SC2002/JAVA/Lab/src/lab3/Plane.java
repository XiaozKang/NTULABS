package lab3;


public class Plane {

	private PlaneSeat[] seat = new PlaneSeat[12];
	private int numEmptySeat;
	
	public Plane() {
		for(int i =1; i<=seat.length; i++) {
			seat[i-1]= new PlaneSeat(i);
		}
		numEmptySeat = 12;
	}
	
	private PlaneSeat[] sortSeats() {
		PlaneSeat[] copySeat = seat.clone();
		/*for(int i=1;i<=seat.length;i++) {
			for(int j=i;j>0;j--) {
				if(j>=seat.length)break;
				if(copySeat[j].getcustomerId()<copySeat[j-1].getcustomerId()) {
					PlaneSeat temp = copySeat[j-1];
					copySeat[j-1]=copySeat[j];
					copySeat[j]=temp;
				}
				else break;
			}
		}*/
		for(int i=2; i<=copySeat.length; i++) {
			int customer = copySeat[i-1].getcustomerId();
			int j = i-1;
			PlaneSeat temp = copySeat[j];
			while(j>0 && customer<copySeat[j-1].getcustomerId()){
				copySeat[j] = copySeat[j-1];
				j--;
			}
			copySeat[j]=temp;
				
		}
		return copySeat;
	}
	
	public void showNumEmptySeats() {
		System.out.println("There are " + numEmptySeat + " empty seats.");
	}
	
	public void showEmptySeats() {
		for(int i=1; i<=seat.length; i++) {
			if(seat[i-1].isOccupied() == false) {
				System.out.println("SeatID "+ seat[i-1].getSeatId());
			}
		}
	}
	
	public void showAssignedSeats(boolean bySeatID) {
		PlaneSeat[] copySeat;
		if(bySeatID == true) {
			copySeat = seat;
		}
		else {
			copySeat = sortSeats();
		}
		for(int i=1; i<=copySeat.length; i++) {
			if(copySeat[i-1].isOccupied()==true) {
				System.out.println("SeatID " + copySeat[i-1].getSeatId() + " assigned to CustomerID " + copySeat[i-1].getcustomerId() +".");
			}
		}
	}
	
	public void assignSeat(int seatId, int customerId) {
		if(seat[seatId-1].isOccupied()) {
			System.out.println("Seat already assigned to a customer.");
			return;
		}
		seat[seatId-1].assign(customerId);
		numEmptySeat-- ;
	}
	
	public void unAssignSeat(int seatId) {
		seat[seatId-1].unAssign();
		numEmptySeat++ ;
	}
	
	public boolean occupied(int seatId){
		if(seat[seatId-1].isOccupied())return true;
		else return false;
	}
	
}
