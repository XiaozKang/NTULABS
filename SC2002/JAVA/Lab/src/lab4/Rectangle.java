package lab4;

public class Rectangle extends Shape{
	private double length;
	private double breadth;
	private double depth;
	
	public Rectangle(double length,double breadth){
		this.length = length;
		this.breadth =  breadth;
		this.depth = 1;
	}
	public Rectangle(double length, double breadth,double depth){
		this.length = length;
		this.breadth =  breadth;
		this.depth = depth;
	}
	
	public double calculate2DArea(){
		return (length*breadth);
	}
	
	public double calculate3DArea(){
		return (2*(calculate2DArea()+(breadth*depth)+(length*depth)));
	}
	public double calculateVolume(){
		return(length*breadth*depth);
	}
	
}
