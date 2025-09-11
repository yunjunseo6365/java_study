package ch07.sec07.exam01;

class A{}

class B extends A{
}

class D extends B{
}

class C extends A{
}

class E extends C{
}

public class PromotionExample {
	public static void main(String[] args) {
		B b = new B();
		C c = new C();
		D d = new D();
		E e = new E();
		
		// 상속관계 자동타입변환이 일어남
		A a1 = b;
		A a2 = c;
		A a3 = d;
		A a4 = e;
		
		B b1 = d;
		C c1 = e;
		
		//이하는 컴파일 에러. 상속관계 x
		// B b3 = e;
		// C c2 = d;
	}
}