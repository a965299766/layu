package vip.dulaogou.handlers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vip.dulaogou.beans.Product;
import vip.dulaogou.beans.User;
import vip.dulaogou.service.IUserService;

@Controller
public class UserController {
	@Autowired
	@Qualifier("userService")
	private IUserService service;
	
	public void setService(IUserService service) {
		this.service = service;
	}

	@RequestMapping("/login.do")
	public String doLogin(String uname, String upassword, Map<String, Object> map, HttpSession session) {
		
		//直接登陆，方便测试的
		if(uname.equals("root") && upassword.equals("111111")){
			User u = new User(uname, upassword, "", "", "");
			session.setAttribute("nowUser", u);
			return "redirect:/main.jsp";
		}
		
		User user = new User(uname, upassword, "", "", "");
		User getUser = service.login(user);
		if(getUser != null){
			session.setAttribute("nowUser", getUser);
			return "redirect:/main.jsp";
		}else{
			map.put("loginMsg", "fail");
			return "/login.jsp";
		}
	}
	
	@RequestMapping("/exit.do")
	public String doExit(HttpSession session){
		session.invalidate();
		return "redirect:/main.do";
	}
	
	@RequestMapping("/register.do")
	public String doRegister(User user, Map<String, Object> map){
		
		boolean isUnameExists = service.isUnameExists(user.getUname());
		if(true == isUnameExists){
			map.put("registerMsg", "fail");
			return "/register.jsp";
		}else{
			map.put("registerMsg", "success");
			service.register(user);
			return "/login.jsp";
		}
	}
	
	@RequestMapping("/personalcenter.do")
	public String doPersonCenter(){
		
		return "/publishedproducts.do"; 	
	}
	
	@RequestMapping("/publish.do")
	public String doPublish(){
		return "/WEB-INF/jsp/publish.jsp";
	}
	
	@RequestMapping("/updateuserinfo.do")
	public String doUpdateUserInfo(User user, HttpSession session){
		User nowuser = (User) session.getAttribute("nowUser");
		user.setUid(nowuser.getUid());
		service.updateUser(user);
		session.setAttribute("nowUser", user);
		return "/publishedproducts.do";
	}
	
	@RequestMapping("/getpublishername.do")
	public String doGetPublisherName(HttpServletRequest request){
		Product product = (Product) request.getAttribute("product");
		String publisherName = service.getUserById(product.getPpublisherid()).getUname();
		request.setAttribute("publisherName", publisherName);
		return "/productinfo.jsp";
	}
}
