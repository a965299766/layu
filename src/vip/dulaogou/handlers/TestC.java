package vip.dulaogou.handlers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestC {

	@RequestMapping("/test.do")
	public String doTest(Map<String, Object> map){
		map.put("msg", "fail");
		return "redirect:/test.jsp";
	}
}
