package com.service.base;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.common.mybatis.Page;
import com.repository.base.BaseDao;


public class BaseServiceImp<T> implements BaseService<T>{

	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	protected BaseDao<T> baseDao;

	@Override
	public boolean insert(T o) {
		baseDao.insert(o);
		return false;
	
	}

	@Override
	public boolean delete(T o) {
		baseDao.delete(o);
		return false;
	}
	
	@Override
	public boolean update(T o) {
		baseDao.update(o);
		return false;
	}

	@Override
	public List<T> find(T o) {
		return baseDao.find(o);
	}

	@Override
	public Page<T> findByPage(T o, Page<T> page) {
		page.setResults(baseDao.findByPage(o, page));
		return page;
	}


	
}
