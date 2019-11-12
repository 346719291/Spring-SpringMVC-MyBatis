package com.repository;

import java.util.List;

import com.common.mybatis.Page;
import com.entity.Dept;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface DeptDao extends BaseDao<Dept>{

	public Page<Dept> findbypage(Dept dept,Page<Dept> page);
	
	public List<Dept> find(Dept dept);
	
	public boolean adddept(Dept dept);
	
	public boolean deletedept(Dept dept);
	
	public boolean updatedept(Dept dept);

	public List<Dept> findsome(Dept dept);
}
