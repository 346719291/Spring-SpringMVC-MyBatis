package com.service.base;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.common.mybatis.Page;

public interface BaseService<T> {
	/**
	 * 保存一个对象
	 * @param o 对象
	 * @return 对象的ID
	 */
	public boolean insert(T o);	
	/**
	 * 删除一个对象
	 * @param o  对象
	 */
	public boolean delete(T o);
	/**
	 * 更新一个对象
	 * @param o 对象       
	 */
	public boolean update(T o);
	/**
	 * 获得对象列表
	 * @param o 对象       
	 * @return List
	 */
	public List<T> find(T o);	
	/**
	 * 获得对象列表
	 * @param o 对象       
	 * @param page 分页对象
	 * @return List
	 */
	
	public Page<T> findByPage(T o,Page<T> page);	
	
	
}
