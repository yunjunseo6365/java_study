package ch06.sec08.exam04;

public class CalculatorExample {

	public static void main(String[] args) {
		Calculator calc = new Calculator();
		
		//정사각형의 넓이 구하기
		double result1 = calc.areaRectangle(10);
		
		//직사각형의 넓이 구하기
		double result2 = calc.areaRectangle(10, 20);
		
		System.out.println("정사각형 넓이 = " + result1);
		System.out.println("직사각형 넓이 = " + result2);
	}

}
