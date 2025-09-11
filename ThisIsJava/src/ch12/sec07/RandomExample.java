package ch12.sec07;

import java.util.Arrays;
import java.util.Collections;

public class RandomExample {
	public static void main(String[] args) {
		// 랜덤번호
		int[] selectNumber = new int[6];
		//난수 6개 받기
		for(int i = 0; i < selectNumber.length; i++) {
			selectNumber[i] = (int)(Math.random() * 45) + 1;
		}
		//난수 6개 정렬
		Arrays.sort(selectNumber);
		//번호 전체 출력
		System.out.print("번호 : ");
		for(int i : selectNumber) {
			System.out.print(i + " ");
		}
	}
}
