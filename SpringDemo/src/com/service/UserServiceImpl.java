package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.mybatis.Page;
import com.entity.User;
import com.repository.UserDao;

@Service("UserService")
public class UserServiceImpl implements UserService{
	@Autowired
	//@Resource
	private UserDao userdao;
	@Override
	public boolean insert(User user) {
		return userdao.adduser(user);
	}

	@Override
	public boolean delete(User user) {
		return userdao.deleteuser(user);
	}

	@Override
	public boolean update(User user) {
		return userdao.updateuser(user);
	}

	@Override
	public List<User> find(User user) {
		return userdao.find(user);
	}

	@Override
	public Page<User> findByPage(User user, Page<User> page) {
		return userdao.findbypage(user, page);
	}

	@Override
	public boolean deleteUser(User user) {
		return userdao.deleteuser(user);
	}

	@Override
	public boolean addUser(User user) {
		return userdao.adduser(user);
	}

	@Override
	public boolean updateUser(User user) {
		return userdao.updateuser(user);
	}

	public User login(User user) {
		return userdao.login(user);
	}
	
}
