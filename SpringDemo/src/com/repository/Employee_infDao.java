package com.repository;

import java.util.List;

import com.entity.Employee_inf;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface Employee_infDao extends BaseDao<Employee_inf>{
	//添加员工
	public void add(Employee_inf em);
	public List<Employee_inf> FindALL();
	public void delete_emp(Employee_inf o);
}
