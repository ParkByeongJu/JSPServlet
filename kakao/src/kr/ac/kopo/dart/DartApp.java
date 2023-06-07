package kr.ac.kopo.dart;

import java.util.Scanner;

public class DartApp {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("다트 결과를 입력해주세요 : ");
		String dartResult = scanner.nextLine();
		
		DartResultAnalyzer ra = new DartResultAnalyzer(dartResult);
		
		int DartScore = ra.getDartScore();
		String DartScoreEquation = ra.getDartScoreEquation();
		
		System.out.printf("score : %s	equation : %s \n", DartScore, DartScoreEquation);
		
		
		
	}
	
}
