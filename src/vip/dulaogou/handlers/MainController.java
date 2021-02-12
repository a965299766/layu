package vip.dulaogou.handlers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/main.do")
	public String doMain(HttpServletRequest request){
		request.setAttribute("isFirstLoad", "false");
		
		
		
		
		return "/getrandomproducts.do";
	}
}
