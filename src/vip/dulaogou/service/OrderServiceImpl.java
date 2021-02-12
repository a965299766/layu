package vip.dulaogou.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vip.dulaogou.beans.Order;
import vip.dulaogou.dao.IOrderDao;

@Service("orderService")
public class OrderServiceImpl implements IOrderService {
	@Resource(name="IOrderDao")
	private IOrderDao dao;

	public void setDao(IOrderDao dao) {
		this.dao = dao;
	}

	@Override
	public void addOrder(Order order) {
		dao.insertOrder(order);
		
	}

	@Override
	public List<Order> getOrderById(Integer uid) {
		return dao.selectOrderById(uid);
	}

	@Override
	public List<Order> getMySold(Integer uid) {
		return dao.getMySold(uid);
	}
	
	
}
