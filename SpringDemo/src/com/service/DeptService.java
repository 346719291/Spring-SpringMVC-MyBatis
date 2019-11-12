package com.service;

import java.util.List;

import com.entity.Dept;
import com.service.base.BaseService;

public interface DeptService extends BaseService<Dept>{
		
	public List<Dept> findsome(Dept dept);
}
