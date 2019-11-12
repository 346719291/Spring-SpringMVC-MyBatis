package com.service;

import java.util.List;

import com.entity.User;
import com.service.base.BaseService;

public interface UserService extends BaseService<User>{
	//public List<User> ListUser();
	public boolean deleteUser(User user);
	
	public boolean addUser(User user);
	
	public boolean updateUser(User user);
	
	public User login(User user);
	
	public List<User> find_some(User user);
}
