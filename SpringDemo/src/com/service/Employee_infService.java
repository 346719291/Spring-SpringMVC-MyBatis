package com.service;

import java.util.List;

import com.entity.Employee_inf;
import com.service.base.BaseService;

public interface Employee_infService extends BaseService<Employee_inf>{
	public void add(Employee_inf em);
	public List<Employee_inf> FindALL();
	public void delete_emp(Employee_inf o);
}
