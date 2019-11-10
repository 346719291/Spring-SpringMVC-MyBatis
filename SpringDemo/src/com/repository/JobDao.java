package com.repository;

import java.util.List;

import com.common.mybatis.Page;
import com.entity.Job;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface JobDao extends BaseDao<Job>{

	public Page<Job> findbypage(Job job,Page<Job> page);
	
	public List<Job> find(Job job);
	
	public boolean addjob(Job job);
	
	public boolean deletejob(Job job);
	
	public boolean updatejob(Job job);
}
