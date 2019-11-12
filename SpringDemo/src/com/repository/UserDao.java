package com.repository;

import java.util.List;

import com.common.mybatis.Page;
import com.entity.User;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserDao extends BaseDao<User>{
	
	//
	public Page<User> findbypage(User user,Page<User> page);
	
	public List<User> find(User user);
	
	public boolean adduser(User user);
	
	public boolean deleteuser(User user);
	
	public boolean updateuser(User user);

	public User login(User user);

	public User findname(User user);

	public List<User> find_some(User user);
}
