package vip.dulaogou.service;

import java.util.List;

import vip.dulaogou.beans.Cart;

public interface ICartService {

	void addToCart(Cart cart);

	List<Cart> getCartById(Integer uid);

	void deleteCartById(int cid);

	Cart getCartByCid(String cid);
	
}
