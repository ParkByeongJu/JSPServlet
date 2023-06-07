package kr.ac.kopo.cache;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CacheLru {

	private int cacheSize;
	private List<String> cities;

	public CacheLru(int cacheSize, List<String> cities) {
		this.cacheSize = cacheSize;
		this.cities = cities;
	}

	public int calculateTotalTime() {
		int hitTime = 1; // 캐시 히트 시간
		int missTime = 5; // 캐시 미스 시간

		int totalTime = 0;
		Map<String, Integer> cacheMap = new HashMap<>();

		for (String city : cities) {
			city = city.toLowerCase();

			if (cacheMap.containsKey(city)) {
				// 캐시 히트
				totalTime += hitTime;
				cacheMap.put(city, totalTime);
			} else {
				// 캐시 미스
				totalTime += missTime;

				if (cacheMap.size() >= cacheSize) {
					String lruCity = findLeastRecentlyUsedCity(cacheMap);
					cacheMap.remove(lruCity);
				}
				cacheMap.put(city, totalTime);
			}
		}

		return totalTime;
	}

	private String findLeastRecentlyUsedCity(Map<String, Integer> cacheMap) {
		int minTime = Integer.MAX_VALUE;
		String leastRecentlyUsedCity = "";

		for (Map.Entry<String, Integer> entry : cacheMap.entrySet()) {
			if (entry.getValue() < minTime) {
				minTime = entry.getValue();
				leastRecentlyUsedCity = entry.getKey();
			}
		}

		return leastRecentlyUsedCity;
	}
}
