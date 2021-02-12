package vip.dulaogou.dao;

import vip.dulaogou.beans.User;

public interface IUserDao {
	User selectUserByNameAndPassword(User user);
	void insertUser(User user);
	User getUserByName(String uname);
	void updateUser(User user);
	User selectUserById(int id);
}
