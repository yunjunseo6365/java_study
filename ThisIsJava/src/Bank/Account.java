package Bank;

public class Account {
	//필드
	private String accountNum;
	private String accountName;
	private int balance;
	
	//생성자
	public Account(String accountNum, String accountName, int balance) {
		this.accountNum = accountNum;
		this.accountName = accountName;
		this.balance = balance;
	}
	
	//getter 설정
	public String getAccNum() {
		return accountNum;
	}
	
	public String getAccName() {
		return accountName;
	}
	
	public int getBalance() {
		return balance;
	}
	
	//예금
	public void deposit(int amount) {
		if(amount > 0) {	//예금액이 0보다 클때만 예금
			this.balance += amount;
		} else {
			System.out.println("올바른 예금액이 아닙니다.");
		}
	}
	//출금
	public void withdraw(int amount) {
		if(balance > amount) {	//출금액이 현재잔액보다 적을때만 출금
			this.balance -= amount;
		} else {
			System.out.println("현재 잔액이 출금액보다 적습니다. 출금을 할 수 없습니다.");
		}
	}
}
