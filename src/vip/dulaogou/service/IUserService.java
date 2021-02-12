package vip.dulaogou.service;

import vip.dulaogou.beans.User;

public interface IUserService {
	User login(User user);
	void register(User user);
	boolean isUnameExists(String uname);
	void updateUser(User user);
	User getUserById(int id);
}
