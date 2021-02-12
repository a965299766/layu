package vip.dulaogou.dao;

import java.util.List;

import vip.dulaogou.beans.Order;

public interface IOrderDao {

	public void insertOrder(Order order);

	public List<Order> selectOrderById(Integer uid);

	public List<Order> getMySold(Integer uid);
	
}
