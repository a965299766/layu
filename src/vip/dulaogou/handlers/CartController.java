package vip.dulaogou.handlers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vip.dulaogou.beans.Cart;
import vip.dulaogou.beans.User;
import vip.dulaogou.service.ICartService;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartService")
	private ICartService service;
	
	
	public void setService(ICartService service) {
		this.service = service;
	}


	@RequestMapping("/addtocart.do")
	public String doAddToCart(@RequestParam(name="num")int cnum,@RequestParam(name="pid")String cproductid, HttpServletRequest request, HttpSession session){
		User nowUser = (User) session.getAttribute("nowUser");
		Cart cart = new Cart(nowUser.getUid(), Integer.valueOf(cproductid), cnum);
		service.addToCart(cart);
		
		return "redirect:/getoneproduct.do?pid=" + cproductid;
	}
	
	@RequestMapping("/cart.do")
	public String doCart(HttpSession session, HttpServletRequest request){
		User nowUser = (User) session.getAttribute("nowUser");
		List<Cart> carts = service.getCartById(nowUser.getUid());
		request.setAttribute("carts", carts);
		return "/WEB-INF/jsp/cart.jsp";
	}
	
	@RequestMapping("/deletecart.do")
	public String doDeleteCart(@RequestParam(name="cid")int cid){
		service.deleteCartById(cid);
		return "redirect:/cart.do";
	}
	
	@RequestMapping("/pay.do")
	public String doPay(@RequestParam(name="cid")String cid, HttpServletRequest request){
		Cart cart = service.getCartByCid(cid);
		request.setAttribute("cart", cart);
		return "/addtoorder.do";
	}
}
