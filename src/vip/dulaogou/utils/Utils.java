package vip.dulaogou.utils;

public class Utils {
	//获取范围内的随机数，左闭右开
	public static Integer getRandomMath(int min, int max){
		if(max < min){
			int t = max;
			max = min;
			min = t;
		}
		return new Integer((int) (Math.random() * (max - min) + min));
	}
	
	
}
