package lab4;
import java.lang.Math;

public class Circle extends Shape{
	private double radius;
	
	public Circle (double radius){
		this.radius=radius;
	}
	
	public double calculate2DArea(){
		return (Math.PI*radius*radius);
	}
	
	public double calculate3DArea(){
		return (4*Math.PI*radius*radius);
		
	}

	public double calculateVolume(){
	
		return ((4.0/3)*Math.PI*radius*radius*radius);
	}
}
