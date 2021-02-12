package vip.dulaogou.dao;

import java.util.List;

import vip.dulaogou.beans.Cart;

public interface ICartDao {

	void insertCart(Cart cart);

	List<Cart> selectCartById(Integer uid);

	void deleteCartById(int cid);

	Cart selectCartByCid(String cid);

}
