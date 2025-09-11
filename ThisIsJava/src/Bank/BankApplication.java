package Bank;

import java.util.*;

public class BankApplication {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		//길이 100인 Account[] 배열로 관리
		Account[] accountArray = new Account[100];
		//프로그램의 반복을 빠져나오기 위한 변수 선언과 초기화
		boolean selectOut = true;
		
		
		//switch 문이 5인경우 selectOut을 이용해서 반복문을 빠져나옴
		for(int i = 0; i < accountArray.length; i++){
			System.out.println("------------------------------------------");
			System.out.println("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
			System.out.println("------------------------------------------");
			System.out.print("선택> ");	
			int select = input.nextInt();	//선택 입력부
			input.nextLine();
			switch(select) {
				//1.계좌생성
				case 1:
					System.out.println("---------------");
					System.out.println("계좌생성");
					System.out.println("---------------");
					System.out.print("계좌번호: ");
					String accountNum = input.nextLine();
					System.out.print("계좌주: ");
					String accountName = input.nextLine();
					System.out.print("초기입금액: ");
					int balance = input.nextInt();
					//계좌(객체) 생성
					Account accHolder = new Account(accountNum, accountName, balance);
					//생성된 객체를 accountArray에 할당
					accountArray[i] = accHolder;
					System.out.println("결과 : 계좌가 생성되었습니다.");
					break;
					
				//2.계좌목록
				case 2:
					System.out.println("---------------");
					System.out.println("계좌목록");
					System.out.println("---------------");
					for(Account acc : accountArray) {
						if(acc != null) {	//null값을 제외하고 출력
							System.out.println(acc.getAccNum() + "   " + acc.getAccName() + "   " + acc.getBalance());
						}
					}
					break;
					
				//3.예금
				case 3:
					System.out.println("---------------");
					System.out.println("예금");
					System.out.println("---------------");
					System.out.print("계좌번호: ");
					String compareNumDp = input.next();	//계좌번호 비교용 변수 생성
					for(Account acc : accountArray) {
						if(acc!=null && acc.getAccNum().equals(compareNumDp)) {
							System.out.print("예금액 : ");
							int amount = input.nextInt();
							acc.deposit(amount);
						} 
					}
					break;
					
				//4.출금
				case 4:
					System.out.println("---------------");
					System.out.println("출금");
					System.out.println("---------------");
					System.out.print("계좌번호 : ");
					String compareNumWd = input.next(); //계좌번호 비교용 변수 생성
					for(Account acc : accountArray) {
						if(acc!=null && acc.getAccNum().equals(compareNumWd)) {
							System.out.print("출금액 : ");
							int amount = input.nextInt();
							acc.withdraw(amount);
						}
					}
					break;
					
				//5.종료
				case 5:
					selectOut = false;
					break;
			}
			if(selectOut==false) {
				System.out.println("프로그램 종료");
				break;
			}
		}
	}

}
