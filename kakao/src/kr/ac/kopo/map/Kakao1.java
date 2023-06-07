package kr.ac.kopo.map;

import java.util.Scanner;


public class Kakao1 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("배열의 길이를 입력하세요 : ");
		int arrlength = sc.nextInt();
		
		
		System.out.print("arr1을 입력하세요 : ");
		int[] arr1 = new int[arrlength];
		
		for (int i = 0; i < arrlength; i++) {
			arr1[i] = sc.nextInt();
		}


		System.out.print("arr2를 입력하세요 : ");
		int[] arr2 = new int[arrlength];
		
		for (int i = 0; i < arrlength; i++) {
			arr2[i] = sc.nextInt();
		}

		System.out.println("매개변수 n = " + arrlength);
		
		System.out.print("arr1 = ");
		for (int i = 0; i < arr1.length; i++) {
			 System.out.print(arr1[i] + " ");
		}
		
		System.out.println();
		
		System.out.print("arr2 = ");
		for (int i = 0; i < arr2.length; i++) {
			System.out.print(arr2[i] + " ");
		}
		
		
		
	}

}
