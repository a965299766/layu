package vip.dulaogou.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vip.dulaogou.beans.User;
import vip.dulaogou.dao.IUserDao;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	@Resource(name="IUserDao")
	private IUserDao dao;
	
	public void setDao(IUserDao dao) {
		this.dao = dao;
	}

	@Override
	@Transactional
	public User login(User user) {
		User getUser = dao.selectUserByNameAndPassword(user);
		return getUser;
	}

	@Override
	@Transactional
	public void register(User user) {
		dao.insertUser(user);
		
	}

	@Override
	@Transactional
	public boolean isUnameExists(String uname) {
		User user = dao.getUserByName(uname);
		return user != null;
	}

	@Override
	public void updateUser(User user) {
		dao.updateUser(user);
		
	}

	@Override
	public User getUserById(int id) {
		return dao.selectUserById(id);
	}

}
