package vip.dulaogou.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class WebListener implements ServletContextListener, HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
//		Map<String, String> productTypeMap = new HashMap<>(); 
//		productTypeMap.put("digital3c", "数码3C");
//		productTypeMap.put("digital3c_computer", "电脑");
//		productTypeMap.put("digital3c_mobile", "手机");
//		productTypeMap.put("digital3c_parts", "电子配件");
//		productTypeMap.put("cloth", "服装饰品");
//		productTypeMap.put("cloth_mancloth", "男士服装");
//		productTypeMap.put("cloth_womancloth", "女士服装");
//		productTypeMap.put("cloth_decorate", "美妆首饰");
//		productTypeMap.put("life", "生活百货");
//		productTypeMap.put("life_lifeuse", "生活用品");
//		productTypeMap.put("life_study", "学习文具");
//		productTypeMap.put("electric", "家用电器");
//		productTypeMap.put("electric_small", "小功率电器");
//		productTypeMap.put("electric_big", "大功率电器");
//		productTypeMap.put("sport", "运动户外");
//		productTypeMap.put("sport_cloth", "运动鞋服");
//		productTypeMap.put("sport_equipment", "运动器材");
//		productTypeMap.put("game", "虚拟道具");
//		productTypeMap.put("game_recharge", "游戏充值");
//		productTypeMap.put("game_prop", "游戏道具");
//		productTypeMap.put("other", "其他");
//		event.getServletContext().setAttribute("productTypeMap", productTypeMap);
		
	}

}
