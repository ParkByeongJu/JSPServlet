package controller;

import java.util.HashMap;
import java.util.Map;

import controller.user.insertUserController;
import controller.user.loginController;
import controller.user.logoutController;

public class HandlerMapping {

		private Map<String, Controller> mappings;
		public HandlerMapping() {
			mappings = new HashMap<String, Controller>();
			mappings.put("/insertUser.do", new insertUserController());
			mappings.put("/login.do", new loginController());
			mappings.put("/logout.do", new logoutController());
		}
		public Controller getController(String path) {
			return mappings.get(path);
		}
		
}
