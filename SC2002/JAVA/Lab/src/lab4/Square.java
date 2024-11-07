package lab4;

public class Square extends Shape{
	
	private double length;
	
	public Square(double length){
		this.length = length;
	}
	
	public double calculate2DArea(){
		return (length*length);
	}
	
	public double calculate3DArea(){
		return(calculate2DArea()*6);
	}
	public double calculateVolume(){
		return(length*length*length);
	}

}
