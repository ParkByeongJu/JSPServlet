package kr.ac.kopo.cache;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class CacheApp {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		List<String> cities = new ArrayList<String>();
		
		System.out.print("캐시크기를 입력해주세요 : ");
		int cacheSize = scanner.nextInt();
		scanner.nextLine(); 
		
		if (cacheSize >= 0 && cacheSize <= 30) {
			System.out.println("도시를 입력해주세요 : ");
			while (true) {
				String city = scanner.nextLine();
				if(city.equals("q")) {
					break;
				} else {
					cities.add(city);
				}
			}
			
			CacheLru cl = new CacheLru(cacheSize, cities);
			int totalTime = cl.calculateTotalTime();
			System.out.printf("CacheSize : %s	cities : %s    TotalTime : %d", cacheSize, cities, totalTime);

		}else {
			System.out.println("캐시의 범위가 잘못되었습니다. 0에서 30사이의 숫자를 다시 입력해주세요.");
		}
		
		
	}

}
