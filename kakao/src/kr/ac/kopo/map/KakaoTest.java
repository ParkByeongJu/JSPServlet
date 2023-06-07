package kr.ac.kopo.map;

import java.util.Scanner;

public class KakaoTest {
	
	public static void main(String[] args) {
		
		int count;
		int[] arr1;
		int[] arr2;
		int[] outArr;// OR연산결과
		String[] outString;//출력 문자열

		Scanner scanner = new Scanner(System.in);
		
		System.out.print("지도 한변의 크기를 입력해주세요 : ");
		count = scanner.nextInt();
		
		arr1 = new int[count];
		arr2 = new int[count];
		outArr = new int[count];
		outString = new String[count];
		
		System.out.println("Arr1의 " + count + "개의 숫자를 입력하세요(구분자는 ,)");
		Scanner sc1 = new Scanner(scanner.next()).useDelimiter("\\s*,\\s*");
		for(int i = 0; i < count; i++) {
			arr1[i] = sc1.nextInt();
		}
		
		System.out.println("Arr2의 " + count + "개의 숫자를 입력하세요(구분자는 ,)");
		Scanner sc2 = new Scanner(scanner.next()).useDelimiter("\\s*,\\s*");
		for(int i = 0; i < count; i++) {
			arr2[i] = sc2.nextInt();
		}
		
		for (int i = 0; i < count; i++) {
			outArr[i] = arr1[i] | arr2[i];
			outString[i] = Integer.toBinaryString(outArr[i]);
			outString[i] = outString[i].replace('1', '#');
			outString[i] = outString[i].replace('0', ' ');
			System.out.println(outString[i]);
		}
		
	}

}
