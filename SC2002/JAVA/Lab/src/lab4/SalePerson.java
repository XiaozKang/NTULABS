package lab4;

public class SalePerson implements Comparable{
	private String firstName;
	private String lastName;
	private int totalSales;
	
	public SalePerson(String firstName, String lastName, int totalSales) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.totalSales = totalSales;
	}
	
	public String toString() {
		return (lastName + ", " + firstName + ":" + totalSales);
	}
	
	public boolean equals(Object o) {
		SalePerson salePerson;
		if (o instanceof SalePerson) {
			salePerson = (SalePerson)o;
		}
		else return false;
		if( salePerson.getFirstName() == firstName && salePerson.getLastName() == lastName) {
			return true;
		}
		else return false;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public int getTotalSales() {
		return totalSales;
	}

	@Override
	public int compareTo(Object o) {
		SalePerson salePerson;
		
		if (o instanceof SalePerson) {
			salePerson = (SalePerson) o;
		} 
		else {
			return 0;
		}
		
		if(totalSales > salePerson.getTotalSales()) {
			return 1;
		}
		else if (totalSales < salePerson.getTotalSales()) {
			return -1;
		}
		else if (salePerson.getTotalSales() == totalSales) {
			return salePerson.getLastName().compareTo(lastName);
		}
		else return 0;
	}
}
