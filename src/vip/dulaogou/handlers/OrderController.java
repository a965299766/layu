package vip.dulaogou.handlers;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vip.dulaogou.beans.Cart;
import vip.dulaogou.beans.Order;
import vip.dulaogou.beans.User;
import vip.dulaogou.service.IOrderService;

@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private IOrderService service;
	
	public void setService(IOrderService service) {
		this.service = service;
	}


	@RequestMapping("/order.do")
	public String doOrder(HttpSession session, HttpServletRequest request){
		User nowUser = (User) session.getAttribute("nowUser");
		List<Order> orders = service.getOrderById(nowUser.getUid());
		request.setAttribute("orders", orders);
		return "/WEB-INF/jsp/order.jsp";
	}
	
	@RequestMapping("/addtoorder.do")
	public String doAddToOrder(HttpServletRequest request){
		Cart cart = (Cart) request.getAttribute("cart");
		Order order = new Order(cart.getCuserid(), cart.getCproductid(), cart.getCnum(), new Date(System.currentTimeMillis()));
		service.addOrder(order);
		return "redirect:/updateproductnum.do?pid=" + cart.getCproductid() + "&num=" + cart.getCnum() + "&cid=" + cart.getCid();
	}
	
	@RequestMapping("/getmysold.do")
	public String doGetMySold(HttpServletRequest request, HttpSession session){
		User nowUser = (User) session.getAttribute("nowUser");
		List<Order> mysolds = service.getMySold(nowUser.getUid());
		request.setAttribute("mysolds", mysolds);
		return "/WEB-INF/jsp/personalcenter.jsp";
	}
}
