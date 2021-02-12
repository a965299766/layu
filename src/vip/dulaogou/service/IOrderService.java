package vip.dulaogou.service;

import java.util.List;

import vip.dulaogou.beans.Order;

public interface IOrderService {

	void addOrder(Order order);

	List<Order> getOrderById(Integer uid);

	List<Order> getMySold(Integer uid);

}
