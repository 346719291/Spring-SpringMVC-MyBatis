package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.mybatis.Page;
import com.entity.Dept;
import com.repository.DeptDao;

@Service("DeptService")
public class DeptServiceImpl implements DeptService{
	@Autowired
	private DeptDao deptDao;
	@Override
	public boolean insert(Dept dept) {
		return deptDao.adddept(dept);
	}

	@Override
	public boolean delete(Dept dept) {
		return deptDao.deletedept(dept);
	}

	@Override
	public boolean update(Dept dept) {
		return deptDao.updatedept(dept);
	}

	@Override
	public List<Dept> find(Dept dept) {
		return deptDao.find(dept);
	}

	@Override
	public Page<Dept> findByPage(Dept dept, Page<Dept> page) {
		return deptDao.findbypage(dept, page);
	}

}
