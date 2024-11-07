package lab3;

public class PlaneSeat {

	private int seatId;
	private boolean assigned;
	private int customerId;
		
	public PlaneSeat(int seatId) {
		this.seatId = seatId;
		assigned  = false;
	}
	
	public int getSeatId() {
		return seatId;
	}
	
	public int getcustomerId() {
		return customerId;
	}
	
	public boolean isOccupied() {
		return assigned;
	}
	
	public void assign(int customerId) {
		this.customerId = customerId;
		assigned = true;
	}
	
	public void unAssign() {
		assigned = false;
	}

}
