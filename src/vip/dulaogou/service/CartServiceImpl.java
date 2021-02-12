package vip.dulaogou.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vip.dulaogou.beans.Cart;
import vip.dulaogou.dao.ICartDao;

@Service("cartService")
public class CartServiceImpl implements ICartService {
	@Resource(name="ICartDao")
	private ICartDao dao;

	public void setDao(ICartDao dao) {
		this.dao = dao;
	}

	@Override
	public void addToCart(Cart cart) {
		dao.insertCart(cart);
		
	}

	@Override
	public List<Cart> getCartById(Integer uid) {
		return dao.selectCartById(uid);
	}

	@Override
	public void deleteCartById(int cid) {
		dao.deleteCartById(cid);
		
	}

	@Override
	public Cart getCartByCid(String cid) {
		return dao.selectCartByCid(cid);
		
	}
	
}
