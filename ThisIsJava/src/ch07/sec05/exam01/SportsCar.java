package ch07.sec05.exam01;

public class SportsCar extends Car{
	@Override
	public void speedUp() {
		speed += 1;
	}
	
//	//오버라이딩 불가
//	@Override
//	public void stop() {
//		System.out.println("스포츠 카를 멈춤");
//		speed = 0;
//	}
}
