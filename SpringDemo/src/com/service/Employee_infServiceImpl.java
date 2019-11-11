package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Employee_inf;
import com.repository.Employee_infDao;
import com.service.base.BaseServiceImp;


@Service("Employee_infService")
public class Employee_infServiceImpl extends BaseServiceImp<Employee_inf> implements Employee_infService{
	@Autowired
	private Employee_infDao EmDao;
	
	/**
	 * 添加员工
	 */
	@Override
	public void add(Employee_inf em) {
		EmDao.add(em);
	}

	@Override
	public List<Employee_inf> FindALL() {
		// TODO Auto-generated method stub
		return EmDao.FindALL();
	}

	@Override
	public void delete_emp(Employee_inf o) {
		EmDao.delete_emp(o);
		
	}
}
