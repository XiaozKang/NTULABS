package lab4;
import java.lang.Math;

public class Triangle extends Shape {
	private double height;
	private double base;
	
	public Triangle(double height, double base){
		this.height=height;
		this.base = base;
	}
	
	public double calculate2DArea(){
		return (0.5* base*height);
	}
	public double calculate3DArea(){
		double slantHeight = Math.sqrt((0.25*base*base)+(height*height));
		return (4*0.5*base*slantHeight+(base*base));
	}
	public double calculateVolume(){
		return(base*base*height/3);
	}

}
